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
        let Material1 = Material(materialID: 1, materialTitle: "Trigonometri", materialDescription: "Pelajaran tentang sudut, sisi, dan perbandingan antara sudut terhadap sisi.", materialImageTitle: "Dasar")
        let Material2 = Material(materialID: 2,materialTitle: "Integral Trigonometri", materialDescription: "Integral juga bisa dioperasikan pada fungsi trigonometri.", materialImageTitle: "Integral")
        let Material3 = Material(materialID: 3, materialTitle: "Grafik Funsgi Trigonometri", materialDescription: "Grafik fungsi trigonometri membahas tentang bagaimana cara menentukan sudut-sudut istimewa melalui fungsi trigonometri yang divisulisasikan melalui grafik.", materialImageTitle: "Grafik Fungsi")
        let Material4 = Material(materialID: 4, materialTitle: "Persamaan Trigonometri", materialDescription: "Persamaan yang mengandung perbandingan antara sudut trigonometri dalam bentuk x.", materialImageTitle: "Fungsi Persamaan")
        let Material5 = Material(materialID: 5, materialTitle: "Limit Fungsi Trigonometri", materialDescription: "Limit juga dapat digunakan pada fungsi trigonometri.", materialImageTitle: "Limit Fungsi")
        let Material6 = Material(materialID: 6, materialTitle: "Turunan Fungsi Trigonometri", materialDescription: "Turunan merupakan kebalikan dari integral, dimana pada materi mempelajari tentang fungsi turunan yang umum pada trigonometri.", materialImageTitle: "Turunan Fungsi")
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

