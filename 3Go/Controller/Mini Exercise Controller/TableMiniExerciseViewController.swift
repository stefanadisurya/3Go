//
//  TableMiniExerciseViewController.swift
//  3Go
//
//  Created by Stefan Adisurya on 06/04/21.
//

import UIKit

class TableMiniExerciseViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var tapHere: UIButton!
    @IBOutlet weak var nextStep: UIButton!
    
    var questions: [Question] = [Question(question: "Tentukan himpunan penyelesaian dari persamaan: ")]
    var steps: [Step] = [Step(step: "Ubah cos2x menjadi sin, maka menjadi:")]
    var answers: [Answer] = Answer.generateData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tapHere.isHidden = true
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
            return questions.count
        } else if section == 1 {
            return steps.count
        } else {
            return answers.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "questionCell", for: indexPath) as! CustomCell
            cell.content.text = "\(questions[indexPath.row].question)"
            return cell
        } else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "stepCell", for: indexPath) as! CustomCell
            cell.content.text = "\(steps[indexPath.row].step)"
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "answerCell", for: indexPath) as! AnswerCell
            cell.answer = answers[indexPath.row]
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "answerCell", for: indexPath) as! AnswerCell
            cell.answer = answers[indexPath.row]
            if cell.answer.content == cell.answer.correctAnswer[0] {
                self.tapHere.isHidden = true
                self.nextStep.isEnabled = true
            } else {
                self.tapHere.isHidden = false
                self.nextStep.isEnabled = false
            }
        }
    }
    
    @IBAction func navigateToNextStep(_ sender: UIButton) {
        performSegue(withIdentifier: "navigateToNextPage", sender: self)
    }
    
}
