//
//  PickerViewController.swift
//  UIKit Example
//
//  Created by Emre Alpago on 23.02.2022.
//

import UIKit

class PickerViewController: UIViewController {
//
//
//
//    @IBOutlet var simpleAlertButton: UIButton!
//    @IBOutlet var okCancelAlertButton: UIButton!
//    @IBOutlet var threeAlertButton: UIButton!
//    @IBOutlet var textEntryAlertButton: UIButton!
//    @IBOutlet var secureTextEntryAlertButton : UIButton!
//    @IBOutlet var confirmCancelButton: UIButton!
//    @IBOutlet var destructiveButton: UIButton!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//
//    @IBAction func simpleAlertButtonTapped(_ sender: UIButton) {
//        print("Simple Alert Button")
//        let simpleAlertTitle = "Simple Alert Title"
//        let simpleAlertMeesage = "This is Simple Alert Message"
//        let simpleAlertCancelButtonTitle = "OK"
//
//        let simpleAlertController = UIAlertController(title: simpleAlertTitle, message: simpleAlertMeesage, preferredStyle: .alert)
//
//        let simpleAlertCancelAction = UIAlertAction(title: simpleAlertCancelButtonTitle, style: .cancel) { _ in
//            Swift.debugPrint("Cancel Button Tapped")
//        }
//
//        simpleAlertController.addAction(simpleAlertCancelAction)
//        present(simpleAlertController, animated: true, completion: nil)
//    }
//
//    @IBAction func okCancelAlertButtonTapped(_ sender: UIButton) {
//        print("OK / CANCEL Alert Button")
//        let okCancelAlertTitle = "OK / Cancel Alert"
//        let okCancelAlertMessage = "This is Ok / Cancel Alert Message"
//        let okButton = "OK"
//        let cancelButton = "Cancel"
//
//        let okCancelAlertController = UIAlertController(title: okCancelAlertTitle, message: okCancelAlertMessage, preferredStyle: .alert)
//        let okButtonAction = UIAlertAction(title: okButton, style: .cancel) { _ in
//            Swift.debugPrint("OK Button Tapped")
//        }
//        let cancelButtonAction = UIAlertAction(title: cancelButton, style: .default) { _ in
//            Swift.debugPrint("Cancel Button Tapped")
//        }
//
//        okCancelAlertController.addAction(okButtonAction)
//        okCancelAlertController.addAction(cancelButtonAction)
//
//        present(okCancelAlertController, animated: true, completion: nil)
//    }
//
//    @IBAction func threeAlertButtonTapped(_ sender: UIButton) {
//        print("Three Alert Button")
//        let threeAlertTitle = "Three Alert"
//        let threeAlertMessage = "This is Three Alert Message"
//        let cancelButton = "Cancel"
//        let firstButton = "First Button"
//        let secondButton = "Second Button"
//
//        let threeButtonAlertController = UIAlertController(title: threeAlertTitle, message: threeAlertMessage, preferredStyle: .alert)
//
//        let cancelButtonAction = UIAlertAction(title: cancelButton, style: .cancel) { _ in
//            Swift.debugPrint("Cancel Button Tapped")
//        }
//        let firstButtonAction = UIAlertAction(title: firstButton, style: .default) { _ in
//            Swift.debugPrint("First Button Tapped")
//        }
//        let secondButtonAction = UIAlertAction(title: secondButton, style: .default) { _ in
//            Swift.debugPrint("Second Button Tapped")
//        }
//
//        threeButtonAlertController.addAction(cancelButtonAction)
//        threeButtonAlertController.addAction(firstButtonAction)
//        threeButtonAlertController.addAction(secondButtonAction)
//
//        present(threeButtonAlertController, animated: true, completion: nil)
//    }
//
//    @IBAction func textEntryAlertButtonTapped(_ sender: UIButton) {
//        print("Text Entry Alert Button")
//        let textEntryAlertTitle = "Text Entry"
//        let textEntryAlertMessages = "This is Text Entry Alert Messageg"
//        let cancelButton = "Cancel"
//        let okButton = "OK"
//        var textFieldDeneme: UITextField!
//        let textEntryAlertController = UIAlertController(title: textEntryAlertTitle, message: textEntryAlertMessages, preferredStyle: .alert)
//
//        let cancelButtonTapped = UIAlertAction(title: cancelButton, style: .cancel) { _ in
//            Swift.debugPrint("Cancel Button Tapped")
//        }
//        let okButtonTapped = UIAlertAction(title: okButton, style: .default) { _ in
//            print(textFieldDeneme.text ?? "" )
//        }
//
//        textEntryAlertController.addTextField { textField in
//           textFieldDeneme = textField
//        }
//        textEntryAlertController.addAction(cancelButtonTapped)
//        textEntryAlertController.addAction(okButtonTapped)
//
//        present(textEntryAlertController, animated: true, completion: nil)
//    }
//
//    @IBAction func secureTextEntryAlertButtonTapped(_ sender: UIButton) {
//        print("Secure Text Entry Alert Button")
//
//    }
//
//    @IBAction func confirmCancelButtonTapped(_ sender: UIButton) {
//        print("Confirm Cancel Alert Button")
//        let confirmCancelTitle = "This is Confirm Cancel Messaege"
//        let cancelButton = "Cancel"
//        let okButton = "OK"
//
//    }
//
//    @IBAction func destructiveButtonTapped(_ sender: UIButton) {
//        print("Destrucitve Alert Button")
//    }
//
//    func showAlert(){
//        let alert = UIAlertController(title: "AlertTitle", message: "Alert Message", preferredStyle: .alert)
//        let action = UIAlertAction(title: "OK", style: .cancel) { _ in
//            print("OK Button Tapped")
//        }
//
//        alert.addAction(action)
//
//        present(alert, animated: true, completion: nil)
//
//    }
}
