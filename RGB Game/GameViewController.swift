//
//  GameViewController.swift
//  RGB Game
//
//  Created by Avaneesh Pathak on 08/04/20.
//  Copyright © 2020 Avaneesh Pathak. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var requiredColor: UILabel!
    
    var buttons = [UIButton]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttons = [btn1, btn2, btn3, btn4, btn5, btn6]
        generateNewColors()
        reloadBoxColour()
        
    }
    
    @IBAction func colorBlockPressed(_ sender: UIButton) {
        
        let rgbArr: [Int] = randomRGBGenerator()
        sender.backgroundColor = UIColor(red: CGFloat(rgbArr[0])/255.0, green: CGFloat(rgbArr[1])/255.0, blue: CGFloat(rgbArr[2])/255.0, alpha: 1.0)
        
        
        
    }
    
    @IBAction func reloadButtonPressed(_ sender: UIButton) {
        generateNewColors()
        reloadBoxColour()
    }
    
    //r, g, b value generator
    func randomRGBGenerator() -> [Int] {
        let r = arc4random_uniform(256)
        let g = arc4random_uniform(256)
        let b = arc4random_uniform(256)
        var rgb = [Int]()
        rgb.append(Int(r))
        rgb.append(Int(g))
        rgb.append(Int(b))
        return rgb
    }
    
    //Generates random r,g,b values
    func generateNewColors() {
        
        let rgbArr: [Int] = randomRGBGenerator()
        requiredColor.text = "RGB(\(rgbArr[0]), \(rgbArr[1]), \(rgbArr[2]))"
        
        //select a random button and set it's color to the target value
        //buttons[random] becomes the answer block
        let random = arc4random_uniform(6)
        //print(random)
        buttons[Int(random)].backgroundColor = UIColor(red: CGFloat(rgbArr[0])/255.0, green: CGFloat(rgbArr[1])/255.0, blue: CGFloat(rgbArr[2])/255.0, alpha: 1.0)
    }
    
    //Changes the box colors
    func reloadBoxColour() {
        for i in 0...5 {
            let rgbArr: [Int] = randomRGBGenerator()
            buttons[i].backgroundColor = UIColor(red: CGFloat(rgbArr[0])/255.0, green: CGFloat(rgbArr[1])/255.0, blue: CGFloat(rgbArr[2])/255.0, alpha: 1.0)
        }
    }
    
}
