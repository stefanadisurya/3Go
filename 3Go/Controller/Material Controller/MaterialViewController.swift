//
//  MaterialControllerViewController.swift
//  3Go
//
//  Created by Frisky Moraza on 08/04/21.
//

import UIKit

class MaterialViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{
    
    var Materials = [Material]()
    var index : Int?
    @IBOutlet weak var materialTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Material"
        // Do any additional setup after loading the view.

        // Insert Data
        let Material1 = Material(materialID: 1, materialTitle: "Trygonometry", materialDescription: "Pelajaran tentang sudut, sisi, dan perbandingan antara sudut terhadap sisi", materialImageTitle: "Trygonometry")
        let Material2 = Material(materialID: 2,materialTitle: "Trygonometric Integral", materialDescription: "Integral juga bisa dioperasikan pada fungsi trigonometri", materialImageTitle: "Trygonometric Integral")
        let Material3 = Material(materialID: 3, materialTitle: "Graph of Trigonometry Function", materialDescription: "Description", materialImageTitle: "Graph of Trigonometry Function")
        let Material4 = Material(materialID: 4, materialTitle: "Trigonometry Equation", materialDescription: "Persamaan yang mengandung perbandingan antara sudut trigonometri dalam bentuk x", materialImageTitle: "Trigonometry Equation")
        let Material5 = Material(materialID: 5, materialTitle: "Limit of Trigonometry Function", materialDescription: "Limit juga dapat digunakan pada fungsi trigonometri", materialImageTitle: "Limit of Trigonometry Function")
        let Material6 = Material(materialID: 6, materialTitle: "Derivative Trygonometry Function", materialDescription: "Description", materialImageTitle: "Derivative Trygonometry Function")
        Materials.append(Material1)
        Materials.append(Material2)
        Materials.append(Material3)
        Materials.append(Material4)
        Materials.append(Material5)
        Materials.append(Material6)
        
        materialTableView.reloadData()
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
            return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Materials.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = materialTableView.dequeueReusableCell(withIdentifier: "cellWithDetail", for: indexPath)as! TableViewCellMaterial
        
        let Material = Materials[indexPath.row]
        cell.titleMaterial.text = Material.materialTitle
        cell.descriptionMaterial.text = Material.materialDescription
        cell.viewTitle.text = Material.materialImageTitle
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        self.index = indexPath.row
        performSegue(withIdentifier: "toSubMaterial", sender: nil)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
////        if let destination = segue.destination as? SubMaterialMaterialViewController {
////            destination.subMaterials = Materials[(materialTableView.indexPathForSelectedRow?.row)!]
////        }
//
//        // Validate is it the right segue
//        if segue.identifier == "toSubMaterial"{
//            let destination = segue.destination as? SubMaterialMaterialViewController
//            destination?.selectedTable = materialTableView.cell
//        }
//
//    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSubMaterial" {
            let destination = segue.destination as? SubMaterialMaterialViewController
            destination?.myTitle = Materials[self.index!].materialTitle!
            destination?.materialIDKey = Materials[self.index!].materialID!
        }
    }

}

