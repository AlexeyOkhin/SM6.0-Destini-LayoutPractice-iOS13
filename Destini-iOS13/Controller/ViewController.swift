//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var buttonChoice1: UIButton!
    @IBOutlet weak var buttonChoice2: UIButton!
    var storyBrain = StoreBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func actionChoice(_ sender: UIButton) {
        let userChoice = sender.titleLabel?.text
        storyBrain.setStory(userChoice!)
        updateUI()
        
    }
    
    func updateUI() {
        titleLabel.text = storyBrain.getTitle().title
        buttonChoice1.setTitle(storyBrain.getTitle().choice1, for: .normal)
        buttonChoice2.setTitle(storyBrain.getTitle().choice2, for: .normal)
        
    }
    
}

