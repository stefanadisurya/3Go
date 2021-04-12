//
//  ResultTableViewCell.swift
//  3Go
//
//  Created by Fiona Stefani Limin on 11/04/21.
//

import UIKit

class ResultTableViewCell: UITableViewCell {

    @IBOutlet weak var purple: UIImageView!
    @IBOutlet weak var nomor: UILabel!
    @IBOutlet weak var judul: UILabel!
    @IBOutlet weak var hasil: UILabel!
    @IBOutlet weak var timer: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

