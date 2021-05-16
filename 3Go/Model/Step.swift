//
//  Step.swift
//  3Go
//
//  Created by Stefan Adisurya on 07/04/21.
//

import Foundation

struct Step {
    var step: String
    
    static func generateStep() -> [Step] {
        return [
            Step(step: "Step 1"),
            Step(step: "Step 2"),
            Step(step: "Step 3")
        ]
    }
}
