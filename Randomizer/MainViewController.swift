//
//  ViewController.swift
//  Randomizer
//
//  Created by Александр on 24.07.2024.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var minimumValueLabel: UILabel!
    @IBOutlet var maximumValueLabel: UILabel!
    
    @IBOutlet var randomValueLabel: UILabel!
    
    @IBOutlet var getRandomNumberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getRandomNumberButton.layer.cornerRadius = 15
    }

    @IBAction func getRundomNumberDidPressed() {
        
        
    }
    
}

