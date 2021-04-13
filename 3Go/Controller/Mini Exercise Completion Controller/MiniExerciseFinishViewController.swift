//
//  MiniExerciseCompletionViewController.swift
//  3Go
//
//  Created by Stefan Adisurya on 13/04/21.
//

import Foundation
import UIKit

class MiniExerciseFinishViewController: UIViewController {
    
    @IBOutlet weak var moreExerciseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moreExerciseButton.layer.cornerRadius = 15
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
        
        navigationItem.hidesBackButton = true
        title = ""
    }
    
    @IBAction func moreExercise(_ sender: Any) {
        performSegue(withIdentifier: "moreExercise", sender: nil)
    }
}
