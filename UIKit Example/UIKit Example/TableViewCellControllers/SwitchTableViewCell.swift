//
//  SwitchTableViewCell.swift
//  UIKit Example
//
//  Created by Emre Alpago on 27.02.2022.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {

    @IBOutlet var label: UILabel!
    @IBOutlet var cellSwitch: UISwitch!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
