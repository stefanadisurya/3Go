//
//  SubMaterialViewController.swift
//  3Go
//
//  Created by Stefan Adisurya on 08/04/21.
//

import UIKit

class SubMaterialViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var subMaterials = [subMaterial]()
    var myTitle : String = ""
    
    @IBOutlet weak var subMaterialExerciseTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Register Table
        subMaterialExerciseTableView.register(UINib.init(nibName: "subMaterialCell", bundle: nil), forCellReuseIdentifier: "subMaterialCell")
        
        //insert Data
        let subMaterial1 = subMaterial(subMaterialID: 1, materialID: 4, numLabel: "1", subMaterialTitle: "Sinus", subMaterialDescription: "Persamaan Sinus", subMaterialExplanation: "Explanation 1")
        let subMaterial2 = subMaterial(subMaterialID: 2, materialID: 4, numLabel: "2", subMaterialTitle: "Cosinus", subMaterialDescription: "Persamaan Cosinus", subMaterialExplanation: "Explanation 2")
        let subMaterial3 = subMaterial(subMaterialID: 3, materialID: 4, numLabel: "3", subMaterialTitle: "Tangen", subMaterialDescription: "Persamaan Tangen", subMaterialExplanation: "Explanation 3")
        let subMaterial4 = subMaterial(subMaterialID: 4, materialID: 4, numLabel: "4", subMaterialTitle: "Penyelesaian Persamaan", subMaterialDescription: "Pada Trigonometri", subMaterialExplanation: "Explanation 4")
        subMaterials.append(subMaterial1)
        subMaterials.append(subMaterial2)
        subMaterials.append(subMaterial3)
        subMaterials.append(subMaterial4)
        
        title = myTitle
        
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
        performSegue(withIdentifier: "navigateToExerciseListDetail", sender: nil)
    }

}
