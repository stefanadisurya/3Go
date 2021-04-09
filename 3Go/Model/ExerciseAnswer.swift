//
//  Answer.swift
//  3Go
//
//  Created by Stefan Adisurya on 07/04/21.
//

import Foundation

struct ExerciseAnswer {
    var content: String
    
    static func generateData() -> [ExerciseAnswer] {
        return [
            ExerciseAnswer(content: "cos 2x -> sin(0 - 2x)"),
            ExerciseAnswer(content: "cos 2x -> sin(45 - 2x)"),
            ExerciseAnswer(content: "cos 2x -> sin(90 - 2x)")
        ]
    }
}
