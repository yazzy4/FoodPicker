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
    @IBOutlet weak var hintOfLabel: UILabel!
    @IBOutlet weak var secondFoodLabel: UILabel!
    
    let foodType: [String] = ["American", "Thai", "Chinese", "Italian", "Soul Food", "Comfort Food", "Indian", "Mexican", "Ethiopian", "Japanese", "French", "Creole", "West African", "Fast Food", "Tex Mex", "Vegan", "Seafood", "BBQ", "Vegan BBQ", "Diner Food", "Greek"]
    
    
    @IBAction func didSelectChooseFoodButton(_ sender: UIButton) {
        print("tapped choose")
        
        todaysChoiceLabel.isHidden = false
        foodTypeLabel.isHidden = false
        hintOfLabel.isHidden = false
        secondFoodLabel.isHidden = false
        
        chooseButton.setTitle("Choose Again", for: .normal)
        
        let foodTypeCount = UInt32(foodType.count)
        let randomNumber = arc4random_uniform(foodTypeCount)
        let intRandomNumber = Int(randomNumber)
        let food = foodType[intRandomNumber]
        foodTypeLabel.text = food
        
        let foodTypeCount2 = UInt32(foodType.count)
            let randomNumber2 = arc4random_uniform(foodTypeCount2)
            let intRandomNumber2 = Int(randomNumber2)
            let food2 = foodType[intRandomNumber2]
        secondFoodLabel.text = food2
        
    }
    


}

