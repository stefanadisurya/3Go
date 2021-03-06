//
//  Summary.swift
//  3Go
//
//  Created by Fiona Stefani Limin on 10/04/21.
//

import Foundation

struct Summary {
    let summaryTitle: String?
    let numLabel: String?
    
    static func generateSummary() -> [Summary] {
        return [
            Summary(summaryTitle: "Trigonometri", numLabel: "1"),
            Summary(summaryTitle: "Integral Tak Tentu",  numLabel: "2"),
            Summary(summaryTitle: "Grafik Fungsi Trigonometri",  numLabel: "3"),
            Summary(summaryTitle: "Persamaan Trigonometri",  numLabel: "4")
        ]
    }

}
