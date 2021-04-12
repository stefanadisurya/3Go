//
//  SubMaterialMaterialViewController.swift
//  3Go
//
//  Created by Frisky Moraza on 10/04/21.
//

import Foundation
import UIKit

class SubMaterialMaterialViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var subMaterials = [subMaterial]()
    @IBOutlet weak var subMaterialTableView: UITableView!
    var myTitle : String = ""
    var materialIDKey : Int?
    var count = 0
    var index : Int?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = myTitle

        // double question mark for optional bindings
//        subMaterialTableView. = selectedTable
        
        //Register Table
        subMaterialTableView.register(UINib.init(nibName: "subMaterialCell", bundle: nil), forCellReuseIdentifier: "subMaterialCell")
        
        //insert Data
        let subMaterial1 = subMaterial(subMaterialID: 1, materialID: 4, numLabel: "1", subMaterialTitle: "Sinus", subMaterialDescription: "Persamaan Sinus", subMaterialExplanation: "Explanation 1")
        let subMaterial2 = subMaterial(subMaterialID: 2, materialID: 4, numLabel: "2", subMaterialTitle: "Cosinus", subMaterialDescription: "Persamaan Cosinus", subMaterialExplanation: "Explanation 2")
        let subMaterial3 = subMaterial(subMaterialID: 3, materialID: 4, numLabel: "3", subMaterialTitle: "Tangen", subMaterialDescription: "Persamaan Tangen", subMaterialExplanation: "Explanation 3")
        let subMaterial4 = subMaterial(subMaterialID: 4, materialID: 4, numLabel: "4", subMaterialTitle: "Penyelesaian Persamaan", subMaterialDescription: "Pada Trigonometri", subMaterialExplanation: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
//        let subMaterial5 = subMaterial(subMaterialID: 5, materialID: 1, numLabel: "4", subMaterialTitle: "Test1", subMaterialDescription: "Test1", subMaterialExplanation: "Test1")
//        let subMaterial6 = subMaterial(subMaterialID: 6, materialID: 1, numLabel: "4", subMaterialTitle: "Test2", subMaterialDescription: "Test2", subMaterialExplanation: "Test2")
//        let subMaterial7 = subMaterial(subMaterialID: 7, materialID: 1, numLabel: "4", subMaterialTitle: "Test3", subMaterialDescription: "Test3", subMaterialExplanation: "Test3")

        
//        6 materi -> setiap materi berisi jumlah sub bab berbeda
        
        subMaterials.append(subMaterial1)
        subMaterials.append(subMaterial2)
        subMaterials.append(subMaterial3)
        subMaterials.append(subMaterial4)
//        subMaterials.append(subMaterial5)
//        subMaterials.append(subMaterial6)
//        subMaterials.append(subMaterial7)
        
        
        
        for i in 0..<subMaterials.count {
            if materialIDKey == self.subMaterials[i].materialID {
                 count += 1            }
        }
        
        subMaterialTableView.reloadData()
    }
    

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return subMaterials.count
        
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = subMaterialTableView.dequeueReusableCell(withIdentifier: "subMaterialCell", for: indexPath)as! subMaterialCell
        
   //     if materialIDKey == self.subMaterials[indexPath.row].materialID {
            let subMaterial = subMaterials[indexPath.row]
            cell.numberLabel.text = subMaterial.numLabel
            cell.subMaterialTitle.text = subMaterial.subMaterialTitle
            cell.subMaterialDescription.text = subMaterial.subMaterialDescription
//        }
        
//        print(count)
        
        return cell
        
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        
        self.index = indexPath.row
        performSegue(withIdentifier: "toDetailMaterial", sender: nil)
        print("index = \(self.index!)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailMaterial" {
            let destination = segue.destination as? DetailMaterialViewController
//            let newIndex = index!
            
//            print(newIndex)
            
//            print(subMaterials[newIndex].subMaterialExplanation!)

//            destination?.detailMat = subMaterials[self.index!].subMaterialExplanation!
            destination?.detailMat = subMaterials[self.index!].subMaterialExplanation!
//            print(self.index!)
        }
    }
    
}

