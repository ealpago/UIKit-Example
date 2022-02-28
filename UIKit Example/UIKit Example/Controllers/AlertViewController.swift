//
//  AlertViewController.swift
//  UIKit Example
//
//  Created by Emre Alpago on 23.02.2022.
//

import UIKit

class AlertViewController: UITableViewController{
    
    
    private enum AlertTableViewSection: Int {
        case alertSection
        case actionSection
    }
    
    private enum AlertStyle: Int {
        case simpleAlert
        case okCancelAlert
        case threeButtonAlert
        case textEntryAlert
        case secureTextEntry
    }
    
    private enum ActionStyle: Int {
        case confirmCancelAction
        case destructiveAction
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
    func simpleAlertFunc() {
        let title = "Simple Alert Title"
        let message = "This is Simple Alert message"
        let simpleAlertCancelButton = "OK"
        
        let simpleAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let simpleAlertCancelAction = UIAlertAction(title: simpleAlertCancelButton, style: .cancel) { _ in
            Swift.debugPrint("Simple Alert Cancel")
        }
        
        simpleAlertController.addAction(simpleAlertCancelAction)
        
        present(simpleAlertController, animated: true, completion: nil)
    }
    
    func okCancelAlertFunc() {
        let title = "OK / Cancel Alert Title"
        let message = "This is OK / Cancel Alert message"
        let okButton = "OK"
        let cancelButton = "Cancel"
        
        let okCancelAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButtonAction = UIAlertAction(title: okButton, style: .cancel) { _ in
            Swift.debugPrint("OK Button Tapped")
        }
        let cancelButtonAction = UIAlertAction(title: cancelButton, style: .default) { _ in
            Swift.debugPrint("Cancel Button Tapped")
        }
        
        okCancelAlertController.addAction(okButtonAction)
        okCancelAlertController.addAction(cancelButtonAction)
        
        present(okCancelAlertController, animated: true, completion: nil)
    }
    
    func threeAlertFunc() {
        let title = "Three Alert"
        let message = "This is Three Alert message"
        let firstButton = "First Button"
        let secondButton = "Second Button"
        let cancelButton = "Cancel"
        
        let threeButtonAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let firstButtonAction = UIAlertAction(title: firstButton, style: .default) { _ in
            Swift.debugPrint("First Button Tapped")
        }
        let secondButtonAction = UIAlertAction(title: secondButton, style: .default) { _ in
            Swift.debugPrint("Second Button Tapped")
        }
        let cancelButtonAction = UIAlertAction(title: cancelButton, style: .cancel) { _ in
            Swift.debugPrint("Cancel Button Tapped")
        }
        
        threeButtonAlertController.addAction(firstButtonAction)
        threeButtonAlertController.addAction(secondButtonAction)
        threeButtonAlertController.addAction(cancelButtonAction)
        
        present(threeButtonAlertController, animated: true, completion: nil)
    }
    
    func textEntryAlertFunc() {
        let title = "Text Entry"
        let message = "This is Text Entry message"
        let cancelButton = "Cancel"
        let okButton = "OK"
        let textEntryAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let cancelButtonTapped = UIAlertAction(title: cancelButton, style: .cancel) { _ in
            Swift.debugPrint("Cancel Button Tapped")
        }
        let okButtonTapped = UIAlertAction(title: okButton, style: .default) { _ in
            Swift.debugPrint("OK Button Tapped")

        }
        
        textEntryAlertController.addTextField { _ in
            print("")
        }
        textEntryAlertController.addAction(cancelButtonTapped)
        textEntryAlertController.addAction(okButtonTapped)
        
        present(textEntryAlertController, animated: true, completion: nil)
    }
    func secureTextAlertFunc() {}
    
    func confirmCancelAction() {}
    func destructiveAction() {
        let message = "Destructive action message"
        let destructiveButton = "Destruction"
        let okButton = "OK"
        
        let destructiveController = UIAlertController(title: nil, message: message, preferredStyle: .actionSheet)
        let destructiveButtonTapped = UIAlertAction(title: destructiveButton, style: .destructive) { _ in
            print("Destructive Button Tapped")
        }
        let okButtonTapped = UIAlertAction(title: okButton, style: .default) { _ in
            print("OK Button Tapped")
        }
        
        destructiveController.addAction(destructiveButtonTapped)
        destructiveController.addAction(okButtonTapped)
        
        present(destructiveController, animated: true, completion: nil)
    }
}

extension AlertViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case AlertTableViewSection.alertSection.rawValue:
            switch indexPath.row{
            case AlertStyle.simpleAlert.rawValue:
                simpleAlertFunc()
            case AlertStyle.okCancelAlert.rawValue:
                okCancelAlertFunc()
            case AlertStyle.threeButtonAlert.rawValue:
                threeAlertFunc()
            case AlertStyle.textEntryAlert.rawValue:
                textEntryAlertFunc()
            case AlertStyle.secureTextEntry.rawValue:
                secureTextAlertFunc()
            default: break
            }
        case AlertTableViewSection.actionSection.rawValue:
            switch indexPath.row {
            case ActionStyle.confirmCancelAction.rawValue:
                confirmCancelAction()
            case ActionStyle.destructiveAction.rawValue:
                destructiveAction()
            default: break
            }
        default: break
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}





