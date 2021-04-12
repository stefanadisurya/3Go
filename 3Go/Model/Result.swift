//
//  Result.swift
//  3Go
//
//  Created by Fiona Stefani Limin on 11/04/21.
//

import Foundation
struct Result {
    let judul: String?
    let hasil: String?
    let timer: String?
    let nomor: String?
    
    static func generateResult() -> [Result] {
        return [
            Result(judul: "Aturan Sinus Dasar", hasil: "Correct", timer: "05:34", nomor: "1"),
            Result(judul: "Aturan Sinus Lanjutan", hasil: "Wrong", timer: "09:55", nomor: "2"),
            Result(judul: "Sinus Trigonometri", hasil: "Correct", timer: "06:01", nomor: "3")
        ]
    }
}

