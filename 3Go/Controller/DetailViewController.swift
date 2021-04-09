//
//  DetailViewController.swift
//  3Go
//
//  Created by Frisky Moraza on 08/04/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setupCollection()
        
    }
    
    private func setupCollection() {
        UICollectionView.register(<#T##self: UICollectionView##UICollectionView#>)
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
