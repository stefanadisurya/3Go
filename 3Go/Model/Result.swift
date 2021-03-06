//
//  Result.swift
//  3Go
//
//  Created by Fiona Stefani Limin on 11/04/21.
//

import Foundation
class Result {
    private static let resultInstance = Result()
    
    var resultContainer : [ResultDetail] = [
        ResultDetail(judul: "Aturan Sinus Dasar", hasil: true, timer: "05:34"),
        ResultDetail(judul: "Aturan Sinus Lanjutan", hasil: false, timer: "09:55"),
        ResultDetail(judul: "Sinus Trigonometri", hasil: true, timer: "06:01")
    ]
    
    private init(){
        
    }
    
    func addResult(judul : String, hasil : Bool, timer : String){
        var pointer : Int = 0
        
        for myRecord in resultContainer {
            if myRecord.judul == judul {
                resultContainer[pointer].hasil = hasil
                resultContainer[pointer].timer = timer
                return
            }
            pointer += 1
        }
        resultContainer.append(ResultDetail(judul: judul, hasil: hasil, timer: timer))
    }   
    
    static func getInstance() -> Result {
        return resultInstance
    }
    
    func generateResult() -> [ResultDetail] {
        return resultContainer
    }
}

