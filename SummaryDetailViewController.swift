//
//  SummaryDetailViewController.swift
//  3Go
//
//  Created by Fiona Stefani Limin on 11/04/21.
//

import UIKit

class SummaryDetailViewController: UIViewController {

    @IBOutlet weak var summaryDetailTableView: UITableView!
    
    // Digunakan untuk menampung data Hero
    var detail: Detail?
  
override func viewDidLoad() {
        super.viewDidLoad()
    
       
    
    // Menghubungkan heroTableView dengan ke dua metode di bawah
      summaryDetailTableView.dataSource = self
      summaryDetailTableView.delegate = self
          
      // Menghubungkan berkas XIB untuk HeroTableViewCell dengn summaryTableView.
      summaryDetailTableView.register(UINib(nibName: "SumDetailTableViewCell", bundle: nil), forCellReuseIdentifier: "detailcell")
    }


}



extension SummaryDetailViewController : UITableViewDataSource {

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let myLabel = UILabel()
        myLabel.frame = CGRect(x: 20, y: 10, width: 320, height: 38)
        myLabel.font = UIFont.boldSystemFont(ofSize: 28)
        myLabel.text = "Trigonometry Equation"

        let headerView = UIView()
        headerView.addSubview(myLabel)

        return headerView
    }
func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    return 60
}
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return summaries.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    // Digunakan untuh menghubungkan cell dengan identifier "HeroCell"
       if let cell = tableView.dequeueReusableCell(withIdentifier: "detailcell", for: indexPath) as? SumDetailTableViewCell {
           
           // Menetapkan nilai hero ke view di dalam cell
        let detail = details[indexPath.row]
        cell.deskripsi.text = detail.deskripsi
        cell.nomor.text = detail.nomor
        cell.judul.text = detail.judul
          
           return cell
       } else {
           return UITableViewCell()
       }
}


}

extension SummaryDetailViewController: UITableViewDelegate {
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    // Memanggil View Controller dengan berkas XIB di dalamnya
    print(indexPath.row)
    performSegue(withIdentifier: "listsegue", sender: indexPath.row)

}
}



