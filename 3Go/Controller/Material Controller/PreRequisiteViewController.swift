//
//  PreRequisiteViewController.swift
//  3Go
//
//  Created by Frisky Moraza on 11/04/21.
//

import UIKit

class PreRequisiteViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var preRequisites = [subMaterial]()

    @IBOutlet weak var preTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Register Table
        preTableView.register(UINib.init(nibName: "subMaterialCell", bundle: nil), forCellReuseIdentifier: "subMaterialCell")
        // Do any additional setup after loading the view.
        
        // Insert Data
        let subMaterial1 = subMaterial(subMaterialID: 1, materialID: 4, numLabel: "1", subMaterialTitle: "Perbandingan Trigonometri", subMaterialDescription: "Pada Segitiga", subMaterialExplanation: "")
        let subMaterial2 = subMaterial(subMaterialID: 2, materialID: 4, numLabel: "2", subMaterialTitle: "Sudut Istimewa", subMaterialDescription: "Sin, Cos, Tan", subMaterialExplanation: "")
        let subMaterial3 = subMaterial(subMaterialID: 3, materialID: 4, numLabel: "3", subMaterialTitle: "Dalam Kuadran", subMaterialDescription: "Kuadran Dalam Lingkaran", subMaterialExplanation: "")
        let subMaterial4 = subMaterial(subMaterialID: 4, materialID: 4, numLabel: "4", subMaterialTitle: "Identitas Trigonometri", subMaterialDescription: "Pembuktian Identitas Trigonometri", subMaterialExplanation: "")
        
        preRequisites.append(subMaterial1)
        preRequisites.append(subMaterial2)
        preRequisites.append(subMaterial3)
        preRequisites.append(subMaterial4)
        
        preTableView.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return preRequisites.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = preTableView.dequeueReusableCell(withIdentifier: "subMaterialCell", for: indexPath)as! subMaterialCell
        
   //     if materialIDKey == self.subMaterials[indexPath.row].materialID {
            let preRequisite = preRequisites[indexPath.row]
            cell.numberLabel.text = preRequisite.numLabel
            cell.subMaterialTitle.text = preRequisite.subMaterialTitle
            cell.subMaterialDescription.text = preRequisite.subMaterialDescription
//        }
        
        return cell
    }
    


}

