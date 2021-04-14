//
//  exerciseFinishViewControler.swift
//  3Go
//
//  Created by Yuliana Aulele on 09/04/21.
//

import Foundation
import UIKit

class exerciseFinishViewController: UIViewController {
    
    @IBOutlet weak var oopsLabel: UILabel!
    @IBOutlet weak var incorrectLabel: UILabel!
    @IBOutlet weak var robotImage: UIImageView!
    @IBOutlet weak var timeElapsedLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var excerciseButton: UIButton!
    @IBOutlet weak var explanationButton: UIButton!
    
    var isCorrect : Bool = true
    var timer : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpComponent()
    }
    
    private func setUpComponent(){
        if (isCorrect){
            oopsLabel.text = "Wohoo!"
            incorrectLabel.text = "Jawaban Anda benar!"
            robotImage.image = #imageLiteral(resourceName: "Image Wohoo")
        } else {
            oopsLabel.text = "Oops!"
            incorrectLabel.text = "Jawaban Anda salah"
            robotImage.image = #imageLiteral(resourceName: "Image Oops")
        }
        excerciseButton.layer.cornerRadius = 15
    }
    
    @IBAction func moreExercise(_ sender: Any) {
        performSegue(withIdentifier: "moreExercise", sender: nil)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
        
        navigationItem.hidesBackButton = true
        title = ""
        timerLabel.text = timer
        
    }

}


