//
//  ExerciseListDetail.swift
//  3Go
//
//  Created by Jackie Leonardy on 08/04/21.
//

import Foundation

struct ExerciseListDetail {
    var exerciseListTitle: String?
    var numLabel: String?
    
    init(numLabel:String, exerciseListTitle:String) {
        self.numLabel = numLabel
        self.exerciseListTitle = exerciseListTitle
    }
}
