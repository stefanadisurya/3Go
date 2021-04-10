//
//  ExerciseListDetailCell.swift
//  3Go
//
//  Created by Jackie Leonardy on 08/04/21.
//

import UIKit

class ExerciseListDetailCell: UITableViewCell {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var exerciseListTitle: UILabel!
    @IBOutlet weak var backgroundOval: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
