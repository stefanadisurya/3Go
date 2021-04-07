//
//  Answer.swift
//  3Go
//
//  Created by Stefan Adisurya on 07/04/21.
//

import Foundation

struct Answer {
    var content: String
    
    var correctAnswer: [String] = ["cos 2x -> sin(90 - 2x)"]
    
    static func generateData() -> [Answer] {
        return [
            Answer(content: "cos 2x -> sin(0 - 2x)"),
            Answer(content: "cos 2x -> sin(45 - 2x)"),
            Answer(content: "cos 2x -> sin(90 - 2x)")
        ]
    }
}
