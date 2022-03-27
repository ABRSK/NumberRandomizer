//
//  SettingsViewController.swift
//  NumberRandomizer
//
//  Created by Андрей Барсук on 27.03.2022.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var minNumField: UITextField!
    @IBOutlet var maxNumField: UITextField!
    @IBOutlet var saveButton: UIButton!
    @IBOutlet var cancelButton: UIButton!
    
    var minNumber: String!
    var maxNumber: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        saveButton.layer.cornerRadius = 15
        cancelButton.layer.cornerRadius = 15
        
        minNumField.text = minNumber
        maxNumField.text = maxNumber
        
    }

    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
}
