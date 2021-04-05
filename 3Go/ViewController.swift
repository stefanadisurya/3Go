//
//  ViewController.swift
//  3Go
//
//  Created by Stefan Adisurya on 05/04/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var welcomeLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpView()
    }
    
    func setUpView() {
        welcomeLbl.text = "Modified!"
    }


}

