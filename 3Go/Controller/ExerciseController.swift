//
//  ExerciseController.swift
//  3Go
//
//  Created by Jackie Leonardy on 07/04/21.
//

import UIKit
import BackgroundTasks

/*
 
 
 
 
 */


class ExerciseController: UIViewController{
    
    var timer: Timer?
    var minute : Int = 0
    var second : Int = 0
    
    @IBOutlet weak var timerLbl: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTimer()
    }
    
    func setTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
        timerLbl.backgroundColor = UIColor.red
        timerLbl.layer.cornerRadius = 12.5
        timerLbl.isEnabled = false
    }
    
    override var prefersStatusBarHidden: Bool {
        return true // true
    }
    
//    override var preferredStatusBarStyle: UIStatusBarStyle{
//        return .darkContent
//    }
    
    @objc func fireTimer(timer: Timer) {
        if(second + 1 == 60){
            minute += 1
            second = 0
        }
        else{
            second += 1
        }
        
        UIView.performWithoutAnimation {
            self.timerLbl.setTitle(String(format: "%02d:%02d", minute,second), for: .normal)
            self.timerLbl.layoutIfNeeded()
        }
    }
    
}
