//
//  subMaterial.swift
//  3Go
//
//  Created by Stefan Adisurya on 08/04/21.
//

import Foundation

struct subMaterial {
    var subMaterialTitle: String?
    var subMaterialDescription: String?
    var numLabel: String?
    
    init(numLabel:String, subMaterialTitle:String, subMaterialDescription:String) {
        self.numLabel = numLabel
        self.subMaterialTitle = subMaterialTitle
        self.subMaterialDescription = subMaterialDescription
    }
}
