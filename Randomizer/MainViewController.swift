//
//  ViewController.swift
//  Randomizer
//
//  Created by Александр on 24.07.2024.
//

import UIKit

final class MainViewController: UIViewController {

    @IBOutlet private var minimumValueLabel: UILabel!
    @IBOutlet private var maximumValueLabel: UILabel!
    
    @IBOutlet private var randomValueLabel: UILabel!
    
    @IBOutlet private var getRandomNumberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getRandomNumberButton.layer.cornerRadius = 15
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingsVC = segue.destination as? SettingsViewController
        settingsVC?.minimumValue = minimumValueLabel.text
        settingsVC?.maximumValue = maximumValueLabel.text
    }

    @IBAction func getRandomNumberDidPressed() {
        let minimumNumber = Int(minimumValueLabel.text ?? "") ?? 0
        let maximumNumber = Int(maximumValueLabel.text ?? "") ?? 100
        
        randomValueLabel.text = Int.random(in: minimumNumber...maximumNumber).formatted()
    }
    
    @IBAction func unwindToMain(_ unwindSegue: UIStoryboardSegue) {
        let settingsVC = unwindSegue.source as? SettingsViewController
    
        minimumValueLabel.text = settingsVC?.minimumValueTF.text
        maximumValueLabel.text = settingsVC?.maximumValueTF.text
    }
    
}

