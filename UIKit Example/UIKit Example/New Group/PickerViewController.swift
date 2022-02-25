//
//  PickerViewController.swift
//  UIKit Example
//
//  Created by Emre Alpago on 23.02.2022.
//

import UIKit

class PickerViewController: UIViewController {
    
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var dateLabel: UILabel!
    
    var colors = ["White", "Gray", "Blue", "Yellow", "Red", "Green"]
    let pickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureDatePicker()
        pickerView.delegate = self
        pickerView.dataSource = self
        textField.inputView = pickerView
        textField.textAlignment = .center
    }
    
    
    func configureDatePicker() {
        datePicker.datePickerMode = .dateAndTime
        
        let date = Date()
        datePicker.minimumDate = date
        datePicker.preferredDatePickerStyle = traitCollection.verticalSizeClass == .compact ? .compact : .inline
        datePicker.addTarget(self, action: #selector(updateDateLabel), for: .valueChanged)
        updateDateLabel()
    }
    
    @objc func updateDateLabel(){
        dateLabel.text = "\(datePicker.date)"
    }
    
}

extension PickerViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textField.text = colors[row]
        textField.resignFirstResponder()
        
    }
}
