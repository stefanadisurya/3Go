//
//  Material.swift
//  3Go
//
//  Created by Frisky Moraza on 09/04/21.
//

import Foundation

struct Material {
    var materialTitle : String?
    var materialDescription : String?
    var materialImageTitle : String?
    
    init(materialTitle:String, materialDescription:String, materialImageTitle:String) {
        self.materialTitle = materialTitle
        self.materialDescription = materialDescription
        self.materialImageTitle = materialImageTitle
    }
    
}
