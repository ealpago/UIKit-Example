//
//  SwitchTableViewCell.swift
//  UIKit Example
//
//  Created by Emre Alpago on 27.02.2022.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {
    
    static let SwitchCellIdentifier = "SwitchCell"
    
    @IBOutlet var label: UILabel?
    @IBOutlet var cellSwitch: UISwitch?
    private var itemModel:TableViewItemModel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cellSwitch?.isOn = false
        cellSwitch?.addTarget(self, action: #selector(switchTapped(_:)), for: .valueChanged)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func initialize(cellModel: TableViewItemModel){
        itemModel = cellModel
        setupCell()
    }
    
    func setupCell(){
        if let itemModel = self.itemModel {
            label?.text = itemModel.label
        }
    }
    
    @objc func switchTapped(_ sender: UISwitch) {
        print("Switch is \(sender.isOn ? "ON" : "OFf")")
    }
}
