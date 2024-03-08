//
//  StudentTableViewCell.swift
//  TabBarDemo
//
//  Created by csuftitan on 3/5/24.
//

import UIKit

class StudentTableViewCell: UITableViewCell {

    @IBOutlet weak var studentImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var companyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
