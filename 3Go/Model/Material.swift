//
//  Material.swift
//  3Go
//
//  Created by Frisky Moraza on 09/04/21.
//

import Foundation

struct Material {
    var materialID : Int?
    var materialTitle : String?
    var materialDescription : String?
    var materialImageTitle : String?
    
    init(materialID:Int, materialTitle:String, materialDescription:String, materialImageTitle:String) {
        self.materialID = materialID
        self.materialTitle = materialTitle
        self.materialDescription = materialDescription
        self.materialImageTitle = materialImageTitle
    }
    
}
