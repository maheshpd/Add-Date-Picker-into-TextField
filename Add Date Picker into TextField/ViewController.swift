//
//  ViewController.swift
//  Add Date Picker into TextField
//
//  Created by Mahesh Prasad on 26/05/20.
//  Copyright © 2020 CreatesApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTextField: UITextField!
    var datePicker = UIDatePicker()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createDatePicker()
    }

    func createDatePicker() {
        datePicker.datePickerMode = .dateAndTime
        let tollbar = UIToolbar()
        tollbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneac))
        
        tollbar.setItems([doneButton], animated: true)
        dateTextField.inputAccessoryView = tollbar
        
        dateTextField.inputView = datePicker
    }
    
    @objc func doneac() {
        dateTextField.text = "\(datePicker.date)"
        self.view.endEditing(true)
    }
    
}

