//
//  ExerciseListCell.swift
//  3Go
//
//  Created by Jackie Leonardy on 07/04/21.
//

import UIKit

class ExerciseListCell: UICollectionViewCell {

    @IBOutlet weak var highlightTitle: UILabel!
    @IBOutlet weak var exerciseImagePlaceholder: UIImageView!
    @IBOutlet weak var exerciseMaterialTitle: UILabel!
    
    @IBOutlet weak var imagePlaceholderBottom: UIImageView!
    @IBOutlet weak var imagePlaceholderTop: UIImageView!
    
    @IBOutlet weak var imageBackground: UIImageView!
    
    @IBOutlet weak var exerciseMasking: UIImageView!
    
    var title: String?{
        didSet{
            exerciseMaterialTitle.text = title!
            highlightTitle.text = title!
        }
    }
    
    var image: String?{
        didSet{
            imagePlaceholderTop.image = UIImage(named: image!)
            imagePlaceholderBottom.image = UIImage(named: image!)
        }
    }
    
    private func kerning(){
        let style = [NSAttributedString.Key.kern: 0]

        let attributeString = NSMutableAttributedString(string: "ASD", attributes: style)

        highlightTitle.attributedText = attributeString
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        kerning()
        self.imagePlaceholderTop.frame = CGRect(x: -25, y: -35, width: 100, height: 100)
        self.imagePlaceholderTop.image = #imageLiteral(resourceName: "ExerciseIconWhite1")
        self.imagePlaceholderTop.transform = CGAffineTransform(rotationAngle: CGFloat.pi * -0.2)
        
//        self.exerciseMasking.frame = self.imagePlaceholder.bounds
//        self.imagePlaceholderBottom.mask = self.exerciseMasking
        
        self.imagePlaceholderBottom.frame = CGRect(x: 100, y: 120, width: 100, height: 100)
        self.imagePlaceholderBottom.image = #imageLiteral(resourceName: "ExerciseIconWhite1")
        self.imagePlaceholderBottom.transform = CGAffineTransform(rotationAngle: CGFloat.pi * 0.2)
//

//        exerciseImagePlaceholder.frame.origin = CGPoint(x: 40, y: 20)
    }

}
