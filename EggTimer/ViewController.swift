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
    
    // via an dictonary collection
    //let eggTimes : [String : Int] = ["Soft": 5, "Medium": 7, "Hard": 12]
    // in seconds
    let eggTimes : [String : Int] = ["Soft": 300, "Medium": 420, "Hard": 720]
    
    var secondsRemaining = 5
    
    
    @IBAction func hardnessSected(_ sender: UIButton) {
        
        let hardness: String = sender.currentTitle!
        secondsRemaining = eggTimes[hardness]!
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            if self.secondsRemaining > 0 {
                print ("\(self.secondsRemaining) seconds.")
                self.secondsRemaining -= 1
            } else {
                Timer.invalidate()
            }
        }
        
       
                
    }
        
    
}
