//
//  Answer.swift
//  3Go
//
//  Created by Stefan Adisurya on 07/04/21.
//

import Foundation

struct Answer {
    var content: String
    
    static func generateData() -> [Answer] {
        return [
            Answer(content: "cos 2x -> sin(0 - 2x)"),
            Answer(content: "cos 2x -> sin(45 - 2x)"),
            Answer(content: "cos 2x -> sin(90 - 2x)")
        ]
    }
    
    static func generateData2() -> [Answer] {
        return [
            Answer(content: "x1 = 18 + (k.72), x2 = 90 + (k.360)"),
            Answer(content: "x1 = 24 + (k.72), x2 = 90 + (k.360)"),
            Answer(content: "x1 = 24 + (k.72), x2 = 45 + (k.360)")
        ]
    }
    
    static func generateData3() -> [Answer] {
        return [
            Answer(content: "(18, 45, 90, 234)"),
            Answer(content: "(18, 90, 162, 234)"),
            Answer(content: "(18, 90, 180, 234)")
        ]
    }
}
