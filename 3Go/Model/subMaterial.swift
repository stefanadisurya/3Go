//
//  subMaterial.swift
//  3Go
//
//  Created by Stefan Adisurya on 08/04/21.
//

import Foundation

struct subMaterial {
    var subMaterialID: Int?
    var materialID: Int?
    var subMaterialTitle: String?
    var subMaterialDescription: String?
    var numLabel: String?
    var subMaterialExplanation: String?
    
    init(subMaterialID:Int, materialID:Int, numLabel:String, subMaterialTitle:String, subMaterialDescription:String, subMaterialExplanation:String) {
        self.subMaterialID = subMaterialID
        self.materialID = materialID
        self.numLabel = numLabel
        self.subMaterialTitle = subMaterialTitle
        self.subMaterialDescription = subMaterialDescription
        self.subMaterialExplanation = subMaterialExplanation
    }
}
