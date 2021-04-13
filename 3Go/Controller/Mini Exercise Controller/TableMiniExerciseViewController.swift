//
//  TableMiniExerciseViewController.swift
//  3Go
//
//  Created by Stefan Adisurya on 06/04/21.
//

import UIKit

class TableMiniExerciseViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var stepLabel: UILabel!
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var tapHere: UIButton!
    @IBOutlet weak var wrongLabel: UILabel!
    @IBOutlet weak var nextStep: UIButton!
    
    var isCorrect: Bool = false
    var isFinished: Bool = false
    var isLastPage: Bool = false
    var selectedDifficulty: String = "Easy"
    
    var easyQuadrant = MiniExercise.easyQuadrant()
    var mediumQuadrant = MiniExercise.mediumQuadrant()
    var hardQuadrant = MiniExercise.hardQuadrant()
    
    var miniExerciseStep: MiniExercise?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.selectedDifficulty == "Easy" {
            self.miniExerciseStep = easyQuadrant["Step 1"]
        } else if self.selectedDifficulty == "Medium" {
            self.miniExerciseStep = mediumQuadrant["Step 1"]
        } else {
            self.miniExerciseStep = hardQuadrant["Step 1"]
        }
        
        self.stepLabel.text = "Step 1"
        self.tapHere.isHidden = true
        self.wrongLabel.isHidden = true
        self.nextStep.isEnabled = false
        self.nextStep.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        self.nextStep.layer.cornerRadius = 15
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "QUESTION"
        } else if section == 1 {
            return "STEP"
        } else {
            return "ANSWER"
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return 1
        } else {
            return 3
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "questionCell", for: indexPath) as! CustomCell
            if let quest = self.miniExerciseStep?.question.question {
                cell.content.text = "\(quest)"
            }
            return cell
        } else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "stepCell", for: indexPath) as! CustomCell
            if let stepContent = self.miniExerciseStep?.steps.step {
                cell.content.text = "\(stepContent)"
            }
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "answerCell", for: indexPath) as! AnswerCell
            if let answerList = self.miniExerciseStep?.answer[indexPath.row] {
                cell.answer = answerList
            }
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "answerCell", for: indexPath) as! AnswerCell
            if let answerList = self.miniExerciseStep?.answer[indexPath.row] {
                cell.answer = answerList
            }
            self.nextStep.isEnabled = true
            self.nextStep.backgroundColor = UIColor(red: 105/255, green: 48/255, blue: 195/255, alpha: 1)
            if cell.answer.content == self.miniExerciseStep?.correctAnswer[0] {
                isCorrect = true
            } else {
                isCorrect = false
            }
        }
    }
    
    func loadNewComponent(isEnabled: Bool, bgColor: UIColor, label: String) {
        self.nextStep.isEnabled = isEnabled
        self.nextStep.backgroundColor = bgColor
        self.stepLabel.text = label
    }
    
    func loadNewData(from generateData: MiniExercise) {
        self.miniExerciseStep = generateData
    }
    
    func generateQuadrant() {
        if self.selectedDifficulty == "Easy" {
            if self.miniExerciseStep?.id == 1 {
                self.nextStep.titleLabel?.text = "Done"
            }
        } else if self.selectedDifficulty == "Medium" {
            if self.miniExerciseStep?.id == 2 {
                loadNewComponent(isEnabled: false, bgColor: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), label: "\(Step(step: "Step 2").step)")
                loadNewData(from: mediumQuadrant["Step 2"]!)
                myTableView.reloadData()
            } else if self.miniExerciseStep?.id == 3 {
                self.nextStep.titleLabel?.text = "Done"
            }
        } else if self.selectedDifficulty == "Hard" {
            if self.miniExerciseStep?.id == 4 {
                loadNewComponent(isEnabled: false, bgColor: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), label: "\(Step(step: "Step 2").step)")
                loadNewData(from: hardQuadrant["Step 2"]!)
                myTableView.reloadData()
            } else if self.miniExerciseStep?.id == 5 {
                loadNewComponent(isEnabled: false, bgColor: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), label: "\(Step(step: "Step 3").step)")
                loadNewData(from: hardQuadrant["Step 3"]!)
                myTableView.reloadData()
            } else if self.miniExerciseStep?.id == 6 {
                self.nextStep.titleLabel?.text = "Done"
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "navigateToSolution" {
            let destination = segue.destination as? SolutionViewController
            destination?.navbarTitle = "Solution"
            if let solution = self.miniExerciseStep?.solution {
                destination?.solution = solution
            }
        }
    }
    
    @IBAction func navigateToNextStep(_ sender: UIButton) {
        if isCorrect {
            self.wrongLabel.isHidden = true
            self.tapHere.isHidden = true
            
            if self.miniExerciseStep?.subMaterialID == 5 {
                generateQuadrant()
            }
            
//            if isLastPage {
//                performSegue(withIdentifier: "navigateToFinish", sender: nil)
//            } else {
//
//            }
        } else {
            self.wrongLabel.isHidden = false
            self.tapHere.isHidden = false
        }

    }
    
}
