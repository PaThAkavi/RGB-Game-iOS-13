//
//  ViewController.swift
//  RGB Game
//
//  Created by Avaneesh Pathak on 08/04/20.
//  Copyright © 2020 Avaneesh Pathak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
    }

    @IBAction func startButtonPressed(_ sender: UIButton) {
        
        startButton.alpha = 0.5
        performSegue(withIdentifier: "goToGame", sender: self)
        
    }
    
}

