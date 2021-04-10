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
    
    var questions: [Question] = [Question(question: "Tentukan himpunan penyelesaian dari persamaan:\nsin 3x = cos 2x; 0 <= x <= 360")]
    var steps: [String] = ["Ubah cos2x menjadi sin, maka menjadi:"]
    var answers: [Answer] = Answer.generateData()
    var correctAnswer: [String] = ["cos 2x -> sin(90 - 2x)"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.stepLabel.text = "Step 1"
        self.tapHere.isHidden = true
        self.wrongLabel.isHidden = true
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
            if stepLabel.text == "Step 1" {
                return "STEP 1"
            } else if stepLabel.text == "Step 2" {
                return "STEP 2"
            } else {
                return "STEP 3"
            }
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
            cell.content.text = "\(steps[0])"
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
            if cell.answer.content == self.correctAnswer[0] {
                self.wrongLabel.isHidden = true
                self.tapHere.isHidden = true
                self.nextStep.isEnabled = true
                self.nextStep.backgroundColor = UIColor(red: 105/255, green: 48/255, blue: 195/255, alpha: 1)
            } else {
                self.wrongLabel.isHidden = false
                self.tapHere.isHidden = false
                self.nextStep.isEnabled = false
                self.nextStep.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
            }
        }
    }
    
    func loadNewComponent(isEnabled: Bool, bgColor: UIColor, label: String) {
        self.nextStep.isEnabled = isEnabled
        self.nextStep.backgroundColor = bgColor
        self.stepLabel.text = label
    }
    
    func loadNewData(from generateData: [Answer], correct: String, step: String) {
        self.answers = generateData
        self.correctAnswer.removeAll()
        self.correctAnswer.append(correct)
        steps.removeAll()
        steps.append(step)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "navigateToSolution" {
            if self.stepLabel.text == "Step 1" {
                let destination = segue.destination as? SolutionViewController
                destination?.navbarTitle = "Solution"
                destination?.solution = "Ubah cos2x menjadi sin\n\nUntuk α = sudut lancip, maka (90° − α) merupakan sudut-sudut kuadran I. Dalam trigonometri, relasi sudut dinyatakan sebagai berikut:\nsin (90° − α) = cos α\n\nSehingga pada kuadran satu di mana sudut sisi kurang dari 90°, persamaan cosinus bisa dinyatakan sebagai\nCos x = sin (90° - x)\n\nUbah cos2x menjadi sin, maka jawabannya menjadi:\nCos x = sin (90° - x)"
            } else if self.stepLabel.text == "Step 2" {
                let destination = segue.destination as? SolutionViewController
                destination?.navbarTitle = "Solution"
                destination?.solution = "2"
            } else if self.stepLabel.text == "Step 3" {
                let destination = segue.destination as? SolutionViewController
                destination?.navbarTitle = "Solution"
                destination?.solution = "3"
            }
        }
    }
    
    @IBAction func navigateToNextStep(_ sender: UIButton) {
        if self.stepLabel.text == "Step 1" {
            loadNewComponent(isEnabled: false, bgColor: #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1), label: "\(Step(step: "Step 2").step)")
            loadNewData(from: Answer.generateData2(), correct: "x1 = 24 + (k.72), x2 = 45 + (k.360)", step: "Setelah mengubah cos, cari nilai x1 dan x2. Maka nilainya adalah:")
            myTableView.reloadData()
        } else if self.stepLabel.text == "Step 2" {
            loadNewComponent(isEnabled: false, bgColor: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), label: "\(Step(step: "Step 3").step)")
            loadNewData(from: Answer.generateData3(), correct: "(18, 90, 162, 234)", step: "Nilai x1 dan x2 sudah ditemukan. Cari nilai k0, k1, k2, k3 untuk menentukan himpunan. Maka himpunannya menjadi:")
            myTableView.reloadData()
        }
    }
    
}
