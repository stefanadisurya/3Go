//
//  ExerciseListDetailViewController.swift
//  3Go
//
//  Created by Jackie Leonardy on 08/04/21.
//

import UIKit

class ExerciseListDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var exerciseList = [ExerciseListDetail]()
    var miniExercise = ExerciseListDetail(numLabel: "0", exerciseListTitle: "Mini Exercise")
    
    var titleLabel: String = ""
    
    @IBOutlet weak var exerciseDetailTable: UITableView!

    var currentSegmentIndex = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Penyelesaian Trigonometri"
        exerciseDetailTable.delegate = self
        exerciseDetailTable.dataSource = self
        generateExercise()
    }
        
    override var prefersStatusBarHidden: Bool {
        true
    }
    
    @IBAction func diffcultyDidChange(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            currentSegmentIndex = 0
            print(sender.selectedSegmentIndex)
        case 1:
            currentSegmentIndex = 1
            print(sender.selectedSegmentIndex)
        default:
            currentSegmentIndex = 2
            print(sender.selectedSegmentIndex)
        }
        exerciseDetailTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return exerciseList.count
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "Do you want to start?", message: "You can't go back once you have started the exercise", preferredStyle: .alert)
        
        let cancelButton = UIAlertAction(title: "Start", style: .default){
            (action) in
            
            print("Save Tapped \(self.currentSegmentIndex) section \(indexPath.section) row \(indexPath.row)")
            
            self.titleLabel = self.exerciseList[indexPath.row].exerciseListTitle!
            
            self.performSegue(withIdentifier: "startExercise", sender: nil)
        }
        alert.addAction(cancelButton)
        
        let startButton = UIAlertAction(title: "Cancel", style: .cancel)
        
        alert.addAction(startButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startExercise" {
            let destination = segue.destination as? ExerciseController
            destination?.navigationTitle = titleLabel
        }
    }
    
    func generateExercise(){
        exerciseDetailTable.register(UINib.init(nibName: "ExerciseListDetailCell", bundle: nil), forCellReuseIdentifier: "ExerciseListDetailCell")
        
        let exerciseDetail1 = ExerciseListDetail(numLabel: "1", exerciseListTitle: "Aturan Sinus Dasar")
        let exerciseDetail2 = ExerciseListDetail(numLabel: "2", exerciseListTitle: "Aturan Sinus Trigonometri")
        let exerciseDetail3 = ExerciseListDetail(numLabel: "3", exerciseListTitle: "Sinus Trigonometri")
        
        exerciseList.append(exerciseDetail1)
        exerciseList.append(exerciseDetail2)
        exerciseList.append(exerciseDetail3)
        
        exerciseDetailTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExerciseListDetailCell", for: indexPath) as! ExerciseListDetailCell
        
        if indexPath.section == 0 {
            cell.numberLabel.text = miniExercise.numLabel
            cell.exerciseListTitle.text = miniExercise.exerciseListTitle
        }
        else {
            cell.numberLabel.text = exerciseList[indexPath.row].numLabel
            cell.exerciseListTitle.text = exerciseList[indexPath.row].exerciseListTitle
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "STEP BY STEP SOLUTION"
        }
        return "QUESTIONS"
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
}
