//
//  SubMaterialViewController.swift
//  3Go
//
//  Created by Stefan Adisurya on 08/04/21.
//

import UIKit

class SubMaterialViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var subMaterials = [subMaterial]()
    @IBOutlet weak var subMaterialExerciseTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Register Table
        subMaterialExerciseTableView.register(UINib.init(nibName: "subMaterialCell", bundle: nil), forCellReuseIdentifier: "subMaterialCell")
        
        //insert Data
        let subMaterial1 = subMaterial(numLabel: "1", subMaterialTitle: "Sinus", subMaterialDescription: "Persamaan Sinus")
        let subMaterial2 = subMaterial(numLabel: "2", subMaterialTitle: "Cosinus", subMaterialDescription: "Persamaan Cosinus")
        let subMaterial3 = subMaterial(numLabel: "3", subMaterialTitle: "Tangen", subMaterialDescription: "Persamaan Tangen")
        let subMaterial4 = subMaterial(numLabel: "4", subMaterialTitle: "Penyelesaian Persamaan", subMaterialDescription: "Pada Trigonometri")
        subMaterials.append(subMaterial1)
        subMaterials.append(subMaterial2)
        subMaterials.append(subMaterial3)
        subMaterials.append(subMaterial4)
        
        subMaterialExerciseTableView.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subMaterials.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = subMaterialExerciseTableView.dequeueReusableCell(withIdentifier: "subMaterialCell", for: indexPath) as! subMaterialCell
        let subMaterial = subMaterials[indexPath.row]
        cell.numberLabel.text = subMaterial.numLabel
        cell.subMaterialTitle.text = subMaterial.subMaterialTitle
        cell.subMaterialDescription.text = subMaterial.subMaterialDescription
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }

}
