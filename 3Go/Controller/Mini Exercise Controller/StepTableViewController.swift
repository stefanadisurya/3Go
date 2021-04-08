//
//  StepTableViewController.swift
//  3Go
//
//  Created by Stefan Adisurya on 08/04/21.
//

import UIKit

class StepTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var stepListTableView: UITableView!
    
    var steps: [Step] = Step.generateStep()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return steps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = stepListTableView.dequeueReusableCell(withIdentifier: "stepListCell", for: indexPath)
        cell.textLabel?.text = "\(steps[indexPath.row].step)"
        return cell
    }
}
