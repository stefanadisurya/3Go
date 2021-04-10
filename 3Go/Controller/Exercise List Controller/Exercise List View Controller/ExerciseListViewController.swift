//
//  ExerciseListViewController.swift
//  3Go
//
//  Created by Jackie Leonardy on 07/04/21.
//

import UIKit

class ExerciseListViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var exerciseCollectionView: UICollectionView!
    
    var materialExercise = [
        "Trigonometry",
        "Trigonometry Integral",
        "Graph of Trigonometry Functions",
        "Trigonometry Equation",
        "Limit of Trigonometry Function",
        "Derivatives of Trigonometry Function"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDataCollection()
        
    }

    private func setupDataCollection(){
        exerciseCollectionView.register(UINib(nibName: "ExerciseListCell", bundle: nil), forCellWithReuseIdentifier: "exerciseCellIdentifier")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return materialExercise.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "exerciseCellIdentifier", for: indexPath) as? ExerciseListCell
        cell?.title = materialExercise[indexPath.item]
        cell?.image = "ExerciseIconWhite" + String(indexPath.item + 1)
        return cell!
    }
}

