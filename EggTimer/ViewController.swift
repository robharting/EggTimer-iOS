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
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    // via an dictonary collection
    //let eggTimes : [String : Int] = ["Soft": 5, "Medium": 7, "Hard": 12]
    // in seconds
    //    let eggTimes : [String : Int] = ["Soft": 300, "Medium": 420, "Hard": 720]
    let eggTimes : [String : Int] = ["Soft": 3, "Medium": 4, "Hard": 7]
    var timer = Timer()
    var player: AVAudioPlayer!
    var totalTime = 0
    var secondsPassed = 0
   
    
    @IBAction func hardnessSected(_ sender: UIButton) {
        timer.invalidate()
        let hardness: String = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0.0
        secondsPassed = 0
        labelName.text = hardness
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            if self.secondsPassed < self.totalTime {
                self.secondsPassed += 1
                self.progressBar.progress = Float(self.secondsPassed)/Float(self.totalTime)
                
                print ("\(self.secondsPassed) seconds passed.")
            } else {
                Timer.invalidate()
                self.labelName.text = "DONE"
                
                let url = Bundle.main.url(forResource: "alarm_sound",  withExtension: "mp3")
                self.player = try! AVAudioPlayer(contentsOf: url!)
                self.player.play()
                
            }
        }
      }
}
