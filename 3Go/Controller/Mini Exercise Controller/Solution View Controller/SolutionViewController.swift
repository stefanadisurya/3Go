//
//  SolutionViewController.swift
//  3Go
//
//  Created by Stefan Adisurya on 10/04/21.
//

import UIKit

class SolutionViewController: UIViewController {
    
    @IBOutlet weak var navbarItem: UINavigationItem!
    @IBOutlet weak var solutionLabel: UILabel!
    
    var navbarTitle: String = ""
    var solution: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        navbarItem.title = navbarTitle
        solutionLabel.text = solution
    }
    
}
