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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        simpleAlertFunc()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    func simpleAlertFunc() {
//        let title = "Simple Alert Title"
//        let message = "This is Simple Alert message"
//        let simpleAlertCancelButton = "OK"
//
//        let simpleAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
//
//        let simpleAlertCancelAction = UIAlertAction(title: simpleAlertCancelButton, style: .cancel) { _ in
//            Swift.debugPrint("Simple Alert Cancel")
//        }
//
//        simpleAlertController.addAction(simpleAlertCancelAction)
//    }
    
//    func setupCell(model: ) -> <#return type#> {
//        <#function body#>
//    }
    
}
