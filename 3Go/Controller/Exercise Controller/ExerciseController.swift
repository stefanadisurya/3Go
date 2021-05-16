//
//  ExerciseController.swift
//  3Go
//
//  Created by Jackie Leonardy on 07/04/21.
//

import UIKit

class ExerciseController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var timer: Timer?
    var minute : Int = 0
    var second : Int = 0
    
    @IBOutlet weak var timerLbl: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    
    let questions: [Question] = [Question(question: "Tentukan himpunan penyelesaian dari persamaan: ")]
    let answers: [Answer] = Answer.generateData()
    let correctAnswer: [String] = ["cos 2x -> sin(90 - 2x)"]
    var navigationTitle : String = ""
    var isCorrect : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTimer()
        navigationItem.hidesBackButton = true
        submitButton.isEnabled = false
        submitButton.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        title = navigationTitle
    }
    
    func setTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
        timerLbl.backgroundColor = UIColor.red
        timerLbl.layer.cornerRadius = 12.5
        submitButton.layer.cornerRadius = 15
        timerLbl.isEnabled = false
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return UIStatusBarAnimation.slide
    }
    
    @IBAction func submitExercise(_ sender: UIButton) {
        self.performSegue(withIdentifier: "submitAnswer", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "submitAnswer" {
            let destination = segue.destination as? exerciseFinishViewController
                destination?.isCorrect = isCorrect
                destination?.timer = String(format: "%02d:%02d", minute,second)
            
            let newRecord = Result.getInstance()
            newRecord.addResult(judul: navigationTitle, hasil: isCorrect, timer: String(format: "%02d:%02d", minute,second))
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "QUESTION"
        }
        return "ANSWERS"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return questions.count
        }
        return answers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "questionCell", for: indexPath) as! CustomCell
            cell.content.text = questions[indexPath.row].question
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "answerCell", for: indexPath) as! AnswerCell
            cell.answer = answers[indexPath.row]
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "answerCell", for: indexPath) as! AnswerCell
            cell.answer = answers[indexPath.row]
            submitButton.isEnabled = true
            submitButton.backgroundColor = #colorLiteral(red: 0.4924007058, green: 0.2953394353, blue: 0.8086324334, alpha: 1)
            if cell.answer.content == self.correctAnswer[0] {
                isCorrect = true
            } else {
                isCorrect = false
            }
        }
    }
    
    @objc func fireTimer(timer: Timer) {
        if(second + 1 == 60){
            minute += 1
            second = 0
        }
        else{
            second += 1
        }
        
        UIView.performWithoutAnimation {
            self.timerLbl.setTitle(String(format: "%02d:%02d", minute,second), for: .normal)
            self.timerLbl.layoutIfNeeded()
        }
    }
    
}

