//
//  subMaterialCell.swift
//  3GoTest
//
//  Created by Audrey Aurelia Chang on 08/04/21.
//

import UIKit

class subMaterialCell: UITableViewCell {

    @IBOutlet weak var backgroundOval: UIImageView!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var subMaterialTitle: UILabel!
    @IBOutlet weak var subMaterialDescription: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
