//
//  DetailMaterialViewController.swift
//  3Go
//
//  Created by Frisky Moraza on 11/04/21.
//

import UIKit

class DetailMaterialViewController: UIViewController {

    @IBOutlet weak var detailMaterial:UILabel!
    var detailMat : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailMaterial.text = detailMat
    }

}
