//
//  Detail.swift
//  3Go
//
//  Created by Fiona Stefani Limin on 11/04/21.
//

import Foundation
struct Detail {
    let judul: String?
    let deskripsi: String?
    let nomor: String?
    
    static func generateDetail() -> [Detail] {
        return [
            Detail(judul: "Sinus", deskripsi: "Persamaan Sinus", nomor: "1"),
            Detail(judul: "Cosinus", deskripsi: "Persamaan Cosinus", nomor: "2"),
            Detail(judul: "Tangen", deskripsi: "Persamaan Tangen", nomor: "3"),
            Detail(judul: "Penyelesaian Persamaan", deskripsi: "Pada Trigonometri", nomor: "4")
        ]
    }

}

