//
//  SegmentTableViewCell.swift
//  UIKit Example
//
//  Created by Emre Alpago on 27.02.2022.
//

import UIKit

class SegmentTableViewCell: UITableViewCell {
    
    static let SegmentCellIdentifier = "SegmentCell"
    
    @IBOutlet var label: UILabel?
    @IBOutlet var segment: UISegmentedControl?
    private var itemModel: TableViewItemModel?
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
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
}
