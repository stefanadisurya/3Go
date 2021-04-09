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
        navigationItem.hidesBackButton = true
        
        timerLabel.text = timer
        
        if (isCorrect){
            oopsLabel.text = "Woho!"
            incorrectLabel.text = "Your answer is correct"
            robotImage.image = #imageLiteral(resourceName: "Image Wohoo")
        } else {
            oopsLabel.text = "Oops!"
            incorrectLabel.text = "Your answer is incorrect"
            robotImage.image = #imageLiteral(resourceName: "Image Oops")
        }
        excerciseButton.layer.cornerRadius = 15
    }
    

    }

