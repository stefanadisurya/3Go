//
//  SummarysTableViewCell.swift
//  3Go
//
//  Created by Fiona Stefani Limin on 10/04/21.
//

import UIKit

class SummarysTableViewCell: UITableViewCell {

    @IBOutlet weak var purple: UIImageView!
    
    @IBOutlet weak var judul: UILabel!
    @IBOutlet weak var nomor: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
