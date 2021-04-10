//
//  TableViewCellMaterial.swift
//  3Go
//
//  Created by Frisky Moraza on 08/04/21.
//

import UIKit

class TableViewCellMaterial: UITableViewCell {
    
    @IBOutlet weak var titleMaterial: UILabel!
    @IBOutlet weak var descriptionMaterial: UILabel!
    @IBOutlet weak var viewImageAndTitle: UIView!
    @IBOutlet weak var viewTitle: UILabel!
    @IBOutlet weak var viewImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
