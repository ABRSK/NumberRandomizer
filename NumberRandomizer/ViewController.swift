//
//  ViewController.swift
//  NumberRandomizer
//
//  Created by Андрей Барсук on 27.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var minNumLabel: UILabel!
    @IBOutlet var maxNumLabel: UILabel!
    @IBOutlet var randomNumLabel: UILabel!
    @IBOutlet var randomizeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomizeButton.layer.cornerRadius = 15
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        
        settingsVC.minNumber = minNumLabel.text
        settingsVC.maxNumber = maxNumLabel.text
    }

    @IBAction func randomizeNumPressed() {
        
        let minNum = Int(minNumLabel.text ?? "") ?? 0
        let maxNum = Int(maxNumLabel.text ?? "") ?? 100
        let randomNum = Int.random(in: minNum...maxNum)
        
        randomNumLabel.text = String(randomNum)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settingsVC = segue.source as? SettingsViewController else { return }
        
        minNumLabel.text = settingsVC.minNumField.text
        maxNumLabel.text = settingsVC.maxNumField.text
        
        randomNumLabel.text = "?"
    }
    
}

