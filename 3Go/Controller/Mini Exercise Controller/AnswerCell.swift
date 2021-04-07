//
//  AnswerCel.swift
//  3Go
//
//  Created by Stefan Adisurya on 06/04/21.
//

import UIKit

class AnswerCell: UITableViewCell {
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var radioButton: UIImageView!
    
    var answer: Answer! {
        didSet {
            answerLabel.text = answer.content
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if(selected) {
            radioButton.image = #imageLiteral(resourceName: "Selected")
        } else {
            radioButton.image = #imageLiteral(resourceName: "Unselected")
        }
    }
}
