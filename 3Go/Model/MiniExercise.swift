//
//  MiniExercise.swift
//  3Go
//
//  Created by Stefan Adisurya on 13/04/21.
//

import Foundation

struct MiniExercise {
    var id: Int
    var subMaterialID: Int
    var question: Question
    var difficulty: String
    var steps: Step
    var correctAnswer: [String]
    var answer: [Answer]
    var solution: String
    
    static func easyQuadrant() -> [String: MiniExercise] {
        return [
            "Step 1": MiniExercise(id: 1, subMaterialID: 5, question: Question(question: "Untuk α = sudut lancip, relasi sudut sin yang benar dalam kuadran 1 adalah"), difficulty: "Easy", steps: Step(step: "Sudut dalam kuadran I terletak antara 0° dan 90° (0° < x < 90°), maka persamaan relasi sudut sin adalah"), correctAnswer: ["sin (90° − α) = cos α"], answer: [
                            Answer(content: "sin (90° − α) = cos α"),
                            Answer(content: "sin (90° + α) = cos α"),
                            Answer(content: "sin (180° + α) = -sin α")
                        ],
                solution: "Untuk α = sudut lancip, maka (90° − α) merupakan sudut-sudut kuadran I. Dalam trigonometri, relasi sudut dinyatakan sebagai berikut:\n\nsin (90° − α) = cos α\ncos (90° − α) = sin α\ntan (90° − α) = cot α\nMaka, sin (90° − α) = cos α"
            )
        ]
    }
    
    static func mediumQuadrant() -> [String: MiniExercise] {
        return [
            "Step 1": MiniExercise(id: 2, subMaterialID: 5, question: Question(question: "Tentukanlah nilai dari sudut komplemen dari perbandingan trigonometri sin 60° yang terletak dalam Kuadran 1"), difficulty: "Medium", steps: Step(step: "Tentukanlah persamaan yang dapat digunakan untuk menentukan sudut berelasi perbandingan trigonometri dalam Kuadran 1"), correctAnswer: ["sin (90° − ⍺) = cos ⍺"], answer: [
                            Answer(content: "sin (90° − ⍺) = cos ⍺"),
                            Answer(content: "cos (90° − ⍺) = sin ⍺"),
                            Answer(content: "tan (90° − ⍺) = cot ⍺")
                        ],
                solution: "Diketahui bahwa sudut ⍺ terletak pada kuadran 1, oleh karena itu dapat disimpulkan bahwa nilai dari sudut ⍺ adalah\n\n0º ≤ ⍺ ≤ 90º\n\nUntuk memperoleh sudut berelasi dengan sin ⍺ yang terletak dalam kuadran 1  maka perlu digunakan persamaan yang menghasilkan nilai sudut yang masih terletak dalam kuadran 1 yaitu (90° − ⍺), maka untuk memperoleh perbandingan trigonometri dari sudut berelasi dengan sin 60° digunakan rumus:\n\nsin (90° − ⍺) = cos ⍺"
            ),
            "Step 2": MiniExercise(id: 3, subMaterialID: 5, question: Question(question: "Tentukanlah nilai dari sudut komplemen dari perbandingan trigonometri sin 60° yang terletak dalam Kuadran 1"), difficulty: "Medium", steps: Step(step: "Tentukanlah nilai ⍺ dalam persamaan dengan nilai sudut yang diketahui dan substitusikan nilai ⍺ kedalam persamaan yang digunakan"), correctAnswer: ["cos 30°"], answer: [
                            Answer(content: "cos 60°"),
                            Answer(content: "cos 30°"),
                            Answer(content: "sin 30°")
                        ],
                solution: "Dari Step 1 telah diketahui bahwa persamaan yang dapat digunakan untuk menyelesaikan soal ini adalah sin (90° − ⍺) = cos ⍺, untuk memperoleh nilai ⍺ maka perlu dicari nilai yang memenuhi\n\nsin (90° − ⍺) = sin 60°,\n\nmaka diperoleh nilai\n\n⍺ = 30°.\n\nSubstitusikan nilai ⍺ kedalam persamaan\n\nsin (90° − ⍺) = cos ⍺,\n\nmaka akan diperoleh nilai\n\ncos 30°"
            )
        ]
    }
    
    static func hardQuadrant() -> [String: MiniExercise] {
        return [
            "Step 1": MiniExercise(id: 4, subMaterialID: 5, question: Question(question: "Sederhanakan bentuk berikut : cos (90°−𝛼)/ sin(90°−𝛼)"), difficulty: "Hard", steps: Step(step: "Tentukan bentuk lain dari cos (90°−𝛼)!"), correctAnswer: ["sin 𝛼"], answer: [
                            Answer(content: "sin 𝛼"),
                            Answer(content: "cos 𝛼"),
                            Answer(content: "tan 𝛼")
                        ],
                solution: "Karena ada dikuadran 1, maka bentuk lain dari cos (90°−𝛼) = sin 𝛼"
            ),
            "Step 2": MiniExercise(id: 5, subMaterialID: 5, question: Question(question: "Sederhanakan bentuk berikut : cos (90°−𝛼)/ sin(90°−𝛼)"), difficulty: "Hard", steps: Step(step: "Tentukan bentuk lain dari sin(90°−𝛼)!"), correctAnswer: ["cos 𝛼"], answer: [
                            Answer(content: "sin 𝛼"),
                            Answer(content: "cos 𝛼"),
                            Answer(content: "tan 𝛼")
                        ],
                solution: "Karena ada dikuadran 1, maka bentuk  lain dari sin(90°−𝛼) = cos 𝛼"
            ),
            "Step 3": MiniExercise(id: 6, subMaterialID: 5, question: Question(question: "Sederhanakan bentuk berikut : cos (90°−𝛼)/ sin(90°−𝛼)"), difficulty: "Hard", steps: Step(step: "Tentukan nilai perbandingan dari sin 𝛼/ cos 𝛼!"), correctAnswer: ["tan 𝛼"], answer: [
                            Answer(content: "sin 𝛼"),
                            Answer(content: "cos 𝛼"),
                            Answer(content: "tan 𝛼")
                        ],
                solution: "Ingat! Bentuk sin 𝛼 /cos 𝛼 adalah tan 𝛼"
            )
        ]
    }
    
}
