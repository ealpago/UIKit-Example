//
//  AlertTableViewCell.swift
//  UIKit Example
//
//  Created by Emre Alpago on 27.02.2022.
//

import UIKit

class AlertTableViewCell: UITableViewCell {
    
    static let AlertCellIdentifier = "AlertCell"
    
    @IBOutlet var label: UILabel?
    private var itemModel: TableViewItemModel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
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
}
