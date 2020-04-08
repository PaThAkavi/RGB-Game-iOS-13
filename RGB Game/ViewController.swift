//
//  ViewController.swift
//  RGB Game
//
//  Created by Avaneesh Pathak on 08/04/20.
//  Copyright © 2020 Avaneesh Pathak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToGame", sender: self)
        
    }
    
}

