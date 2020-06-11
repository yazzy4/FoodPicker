//
//  ViewController.swift
//  FoodPicker
//
//  Created by Yaz Burrell on 6/11/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var todaysChoiceLabel: UILabel!
    @IBOutlet weak var foodTypeLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    let foodType: [String] = ["American", "Thai", "Chinese", "Italian", "Soul Food", "Comfort Food", "Indian", "Mexican", "Ethiopian", "Japanese", "French", "Creole", "West African", "Fast Food", "Tex Mex", "Vegan", "Seafood", "BBQ", "Vegan BBQ", "Diner Food", "Greek"]
    
    
    @IBAction func didSelectChooseFoodButton(_ sender: UIButton) {
        todaysChoiceLabel.isHidden = false
        foodTypeLabel.isHidden = false
        
        chooseButton.setTitle("Choose Again", for: .normal)
        
        let foodTypeCount = UInt32(foodType.count)
        let randomNumber = arc4random_uniform(foodTypeCount)
        
        let intRandomNumber = Int(randomNumber)
        let food = foodType[intRandomNumber]
        
        foodTypeLabel.text = food
        
    }
    


}

