//
//  SumResultViewController.swift
//  3Go
//
//  Created by Fiona Stefani Limin on 11/04/21.
//

import UIKit

class SumResultViewController: UIViewController {

    @IBOutlet weak var ResultTableView: UITableView!
    // Digunakan untuk menampung data Hero
    var result: Result?
  
    override func viewDidLoad() {
            super.viewDidLoad()
        
        // Menghubungkan heroTableView dengan ke dua metode di bawah
        ResultTableView.delegate = self
        ResultTableView.dataSource = self
              
          // Menghubungkan berkas XIB untuk HeroTableViewCell dengn summaryTableView.
          ResultTableView.register(UINib(nibName: "ResultTableViewCell", bundle: nil), forCellReuseIdentifier: "resultcell")
        }


    }


extension SumResultViewController : UITableViewDataSource {

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
           if let cell = tableView.dequeueReusableCell(withIdentifier: "resultcell", for: indexPath) as? ResultTableViewCell {
               
               // Menetapkan nilai hero ke view di dalam cell
            let result = results[indexPath.row]
            cell.judul.text = result.judul
            cell.nomor.text = result.nomor
            cell.hasil.text = result.hasil
            cell.timer.text = result.timer
            if result.hasil == "Correct"{
                cell.hasil?.textColor = .green
            } else {
                cell.hasil?.textColor = .red
            }
              
               return cell
           } else {
               return UITableViewCell()
           }
    }


}

extension SumResultViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Memanggil View Controller dengan berkas XIB di dalamnya
        print(indexPath.row)
      

    }
}



