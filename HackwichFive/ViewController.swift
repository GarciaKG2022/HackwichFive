//
//  ViewController.swift
//  HackwichFive
//
//  Created by Kevin Garcia on 2/23/22.
//

import UIKit

class ViewController: UIViewController {
    
//Part 4: Created IBOutlets
    
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    @IBOutlet weak var buttonLabel: UIButton!
    
//Part 6
    var currentIndex = 0
    
    var favoriteFoodsArray = ["Burgers", "Sushi", "Laulau", "Poke bowl", "Ice Cream"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//Part 5: Set tobLabel's text to "My Favorite Foods"
        topLabel.text = "My Favorite Foods"
        
        bottomLabel.text = favoriteFoodsArray[currentIndex] 
        
    }
    
//Part 8
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        if self.currentIndex < favoriteFoodsArray.count
        {
        
            self.bottomLabel.text = favoriteFoodsArray[currentIndex]
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
            currentIndex += 1
        }
        else
        {
            print("button has been disabled")
            (buttonLabel!).isEnabled = false
        }
//Problem Set One
        
        if self.currentIndex > favoriteFoodsArray.count
        {
            self.bottomLabel.text = favoriteFoodsArray[currentIndex]
            buttonLabel.setTitle("Back", for: UIControl.State.normal)
            currentIndex -= 1
        }
        else {
            print("What does this button do")
            (buttonLabel!).isEnabled = true
        }
    }
}
