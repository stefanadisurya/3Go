//
//  ExerciseListController.swift
//  3Go
//
//  Created by Jackie Leonardy on 07/04/21.
//

import Foundation
import UIKit

class ExerciseListController : UIViewController, UISearchBarDelegate, UICollectionViewDelegate, UICollectionViewDataSource{
    
    @IBOutlet weak var exerciseCollectionView: UICollectionView!
    var results = Result.getInstance()
    var index : Int?
    
    var materialExercise = [
        "Trigonometry",
        "Trigonometry Integral",
        "Graph of Trigonometry Functions",
        "Trigonometry Equation",
        "Limit of Trigonometry Function",
        "Derivatives of Trigonometry Function"
    ]
    
    let detailExerciseView = ExerciseListViewController()
    let searchBarController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDataCollection()
//        generateSearchBar()
    }
    
    private func generateSearchBar(){
        navigationItem.searchController = searchBarController
        searchBarController.searchBar.delegate = self
    }
    
    private func setupListView(){
        self.navigationController?.pushViewController(detailExerciseView, animated: false)
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.index = indexPath.row
        performSegue(withIdentifier: "navigateToExerciseList", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "navigateToExerciseList" {
            let destination = segue.destination as? SubMaterialViewController
            destination?.myTitle = materialExercise[self.index!]
        }
    }
    
}
