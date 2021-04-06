//
//  TableMiniExerciseViewController.swift
//  3Go
//
//  Created by Stefan Adisurya on 06/04/21.
//

import UIKit

class TableMiniExerciseViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    
    var question = ["Tentukan himpunan penyelesaian dari persamaan: "]
    var step = ["Ubah cos2x menjadi sin, maka menjadi:"]
    var answers = ["cos 2x -> sin(0 - 2x)", "cos 2x -> sin(45 - 2x)", "cos 2x -> sin(90 - 2x)"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "QUESTION"
        } else if section == 1 {
            return "STEP 1"
        } else {
            return "ANSWER"
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return question.count
        } else if section == 1 {
            return step.count
        } else {
            return answers.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "questionCell", for: indexPath) as! CustomCell
            cell.content.text = "\(question[indexPath.row])"
            return cell
        } else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "stepCell", for: indexPath) as! CustomCell
            cell.content.text = "\(step[indexPath.row])"
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "answerCell", for: indexPath) as! AnswerCell
            cell.answerLabel.text = "\(answers[indexPath.row])"
            cell.radioButton.image = #imageLiteral(resourceName: "Unselected")
            
            if cell.isSelected || cell.answerLabel.text == "cos 2x -> sin(0 - 2x)" {
                cell.radioButton.image = #imageLiteral(resourceName: "Selected")
            }
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("You selected cell number: \(indexPath.row)!")
    }
    
}
