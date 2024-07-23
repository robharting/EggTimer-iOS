//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
//    @IBOutlet weak var progressBar: UIProgressView!
//    @IBOutlet weak var titleLabel: UILabel!

    
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    
    // via an dictonary
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    

    @IBAction func hardnessSected(_ sender: UIButton) {
        
        let hardness: String = sender.currentTitle!
        
        if (hardness == "Soft") {
            print(softTime)
        } else if (hardness == "Medium" ){
            print(mediumTime)
        } else {
            print(hardTime)
        }
        
                switch hardness {
                    case "Soft":
                        print("You want an \(hardness) egg that will take \(softTime) minutes")
                    case "Medium":
                        print("You want an \(hardness) egg that will take \(mediumTime) minutes")
                    case "Hard":
                        print("You want an \(hardness) egg that will take \(mediumTime) minutes")
                    default:
                        print("Error")
                }
        
    }
    
}
