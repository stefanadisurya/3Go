//
//  SumResultViewController.swift
//  3Go
//
//  Created by Fiona Stefani Limin on 11/04/21.
//

import UIKit

class SumResultViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var results = Result.getInstance().generateResult()
    @IBOutlet weak var ResultTableView: UITableView!
    // Digunakan untuk menampung data Hero
    var result: Result?
    var currentSegmentIndex = 0
  
    override func viewDidLoad() {
        super.viewDidLoad()
    
    // Menghubungkan heroTableView dengan ke dua metode di bawah
    ResultTableView.delegate = self
    ResultTableView.dataSource = self
          
      // Menghubungkan berkas XIB untuk HeroTableViewCell dengn summaryTableView.
      ResultTableView.register(UINib(nibName: "ResultTableViewCell", bundle: nil), forCellReuseIdentifier: "resultcell")
        
        ResultTableView.reloadData()
    }
    
    @IBAction func diffcultyDidChange(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            currentSegmentIndex = 0
            print(sender.selectedSegmentIndex)
        case 1:
            currentSegmentIndex = 1
            print(sender.selectedSegmentIndex)
        default:
            currentSegmentIndex = 2
            print(sender.selectedSegmentIndex)
        }
        ResultTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let myLabel = UILabel()
        myLabel.frame = CGRect(x: 20, y: 10, width: 320, height: 38)
        myLabel.font = UIFont.boldSystemFont(ofSize: 28)
        myLabel.text = "Sinus"

        let headerView = UIView()
        headerView.addSubview(myLabel)

        return headerView
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return results.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Digunakan untuh menghubungkan cell dengan identifier "HeroCell"
       let cell = tableView.dequeueReusableCell(withIdentifier: "resultcell", for: indexPath) as! ResultTableViewCell
           
           // Menetapkan nilai hero ke view di dalam cell
        let result = results[indexPath.row]
        
        let green = UIColor(red: 3/255, green: 137/255, blue: 37/255, alpha: 1)
        let red = UIColor(red: 226/255, green: 34/255, blue: 44/255, alpha: 1)
        
        cell.judul.text = result.judul
        cell.nomor.text = String(indexPath.row + 1)
        cell.hasil.text = result.hasil! ? "Benar" : "Salah"
        cell.hasil?.textColor = result.hasil! ? green : red
        
        cell.timer.text = result.timer
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Memanggil View Controller dengan berkas XIB di dalamnya
        print(indexPath.row)

    }
    
}
