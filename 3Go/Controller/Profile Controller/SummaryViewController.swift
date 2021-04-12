//
//  SummaryViewController.swift
//  3Go
//
//  Created by Fiona Stefani Limin on 10/04/21.
//

import UIKit

class SummaryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var summaries = Summary.generateSummary()
    
    @IBOutlet weak var summaryTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Summary"
        
        // Menghubungkan heroTableView dengan ke dua metode di bawah
          summaryTableView.dataSource = self
          summaryTableView.delegate = self
              
          // Menghubungkan berkas XIB untuk HeroTableViewCell dengn summaryTableView.
          summaryTableView.register(UINib(nibName: "ExerciseListDetailCell", bundle: nil), forCellReuseIdentifier: "suma")
        }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return summaries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Digunakan untuh menghubungkan cell dengan identifier "HeroCell"
       if let cell = tableView.dequeueReusableCell(withIdentifier: "suma", for: indexPath) as? ExerciseListDetailCell {
           
           // Menetapkan nilai hero ke view di dalam cell
        let summary = summaries[indexPath.row]
        cell.numberLabel.text = summary.numLabel
        cell.exerciseListTitle.text = summary.summaryTitle
          
           return cell
       } else {
           return UITableViewCell()
       }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Memanggil View Controller dengan berkas XIB di dalamnya
        print(indexPath.row)
        performSegue(withIdentifier: "summarydetail", sender: indexPath.row)
    }
    
}
