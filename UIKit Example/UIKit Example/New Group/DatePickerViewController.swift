//
//  PickerViewController.swift
//  UIKit Example
//
//  Created by Emre Alpago on 23.02.2022.
//

import UIKit

class DatePickerViewController: UIViewController {
    
    
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var dateLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        configureDatePicker()
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
