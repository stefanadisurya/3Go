//
//  ExerciseListController.swift
//  3Go
//
//  Created by Jackie Leonardy on 07/04/21.
//

import Foundation
import UIKit

class ExerciseListController : UIViewController{
    
    let detailExerciseView = ExerciseListViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupListView()
        title = "EXERCISES"
    }
    
    private func setupListView(){
        self.navigationController?.pushViewController(detailExerciseView, animated: false)
    }
    
    
}
