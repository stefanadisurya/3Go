//
//  MaterialControllerViewController.swift
//  3Go
//
//  Created by Frisky Moraza on 08/04/21.
//

import UIKit

class MaterialViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{
    
    var Materials = [Material]()
    @IBOutlet weak var materialTableView: UITableView!
    
    //    var myData: [String] = ["Trigonometry", "Trigonometric Integral", "Graph of Trigonometry Function", "Trygonometry Equation", "Limit of Trigonometry Function", "Derivative Trygonometry Function" ]
        
    //    var myData: [[String]] = [["Trigonometry","Pelajaran tentang sudut, sisi, dan perbandingan antara sudut terhadap sisi."],
    //                              ["Trygonometric Integral","Integral juga bisa dioperasikan pada fungsi trigonometri."],
    //                              ["Graph of Trigonometry Function","Description"],
    //                              ["Trigonometry Equation","Persamaan yang mengandung perbandingan antara sudut trigonometri dalam bentuk x"],
    //                              ["Limit of Trigonometry Function","Limit juga dapat digunakan pada fungsi trigonometri"],
    //                              ["Derivative Trygonometry Function","Description"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        // Insert Data
        let Material1 = Material(materialTitle: "Trygonometry", materialDescription: "Pelajaran tentang sudut, sisi, dan perbandingan antara sudut terhadap sisi", materialImageTitle: "Trygonometry")
        let Material2 = Material(materialTitle: "Trygonometric Integral", materialDescription: "Integral juga bisa dioperasikan pada fungsi trigonometri", materialImageTitle: "Trygonometric Integral")
        let Material3 = Material(materialTitle: "Graph of Trigonometry Function", materialDescription: "Description", materialImageTitle: "Graph of Trigonometry Function")
        let Material4 = Material(materialTitle: "Trigonometry Equation", materialDescription: "Persamaan yang mengandung perbandingan antara sudut trigonometri dalam bentuk x", materialImageTitle: "Trigonometry Equation")
        let Material5 = Material(materialTitle: "Limit of Trigonometry Function", materialDescription: "Limit juga dapat digunakan pada fungsi trigonometri", materialImageTitle: "Limit of Trigonometry Function")
        let Material6 = Material(materialTitle: "Derivative Trygonometry Function", materialDescription: "Description", materialImageTitle: "Derivative Trygonometry Function")
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
        performSegue(withIdentifier: "toSubMaterial", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSubMaterial" {
            
        }
    }


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
