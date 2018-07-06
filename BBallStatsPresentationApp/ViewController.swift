//
//  ViewController.swift
//  BballStats
//
//  Created by Fred Erik on 06.07.18.
//  Copyright © 2018 Fred Erik. All rights reserved.
//

import UIKit
import CoreData

var currentMinute = 1
var currentMinuteMinusTwo = -1
var currentMinuteMinusOne = 0
var currentMinutePlusOne = 2
var currentMinutePlusTwo = 3
var GameTime = 10
var currentScoreTeamOne = 0
var currentScoreTeamTwo = 0
var action = ""
var pointsOfAction = 0
var playerOfAction = 0

class WhatHappendViewController: UIViewController {
    
    //GameTime
    @IBOutlet weak var twoMinutesBackLabel: UILabel!
    
    @IBOutlet weak var lastMinuteLabel: UILabel!
    
    @IBOutlet weak var nextMinuteLabel: UILabel!
    
    @IBOutlet weak var plusTwoMinutesLabel: UILabel!
    
    @IBOutlet weak var currentScoreTeamOneLabel: UILabel!
    
    @IBOutlet weak var currentScoreTeamTwoLabel: UILabel!
    
    @IBAction func twoMinutesBackPressed(_ sender: UIButton) {
        if currentMinute > 2 {
            currentMinute = currentMinute - 2
            currentMinuteMinusTwo = currentMinuteMinusTwo - 2
            currentMinuteMinusOne = currentMinuteMinusOne - 2
            currentMinutePlusOne = currentMinutePlusOne - 2
            currentMinutePlusTwo = currentMinutePlusTwo - 2
            updateLabels()
            
        }
    }
    
    
    @IBAction func oneMinuteBackPressed(_ sender: UIButton) {
        if currentMinute > 1 {
            currentMinute = currentMinute - 1
            currentMinuteMinusTwo = currentMinuteMinusTwo - 1
            currentMinuteMinusOne = currentMinuteMinusOne - 1
            currentMinutePlusOne = currentMinutePlusOne - 1
            currentMinutePlusTwo = currentMinutePlusTwo - 1
            updateLabels()
        }
    }
    
    
    @IBAction func nextMinutePressed(_ sender: UIButton) {
        if currentMinute <= GameTime - 1 {
            currentMinute = currentMinute + 1
            currentMinuteMinusTwo = currentMinuteMinusTwo + 1
            currentMinuteMinusOne = currentMinuteMinusOne + 1
            currentMinutePlusOne = currentMinutePlusOne + 1
            currentMinutePlusTwo = currentMinutePlusTwo + 1
            updateLabels()
        }
    }
    
    @IBAction func skipTwoMinutesPressed(_ sender: UIButton) {
        if currentMinute <= GameTime - 2 {
            currentMinute = currentMinute + 2
            currentMinuteMinusTwo = currentMinuteMinusTwo + 2
            currentMinuteMinusOne = currentMinuteMinusOne + 2
            currentMinutePlusOne = currentMinutePlusOne + 2
            currentMinutePlusTwo = currentMinutePlusTwo + 2
            updateLabels()
        }
    }
    
    @IBOutlet weak var CurrentMinuteLabel: UILabel!
    
    func updateLabels(){
        self.CurrentMinuteLabel.text = "\(currentMinute)"
        if currentMinuteMinusTwo >= 1 {
            self.twoMinutesBackLabel.text = "\(currentMinuteMinusTwo)"
        } else {
            self.twoMinutesBackLabel.text = "" }
        if currentMinuteMinusOne >= 1 {
            self.lastMinuteLabel.text = "\(currentMinuteMinusOne)"
        } else {
            self.lastMinuteLabel.text = "" }
        
        if currentMinutePlusOne < GameTime + 1 {
            self.nextMinuteLabel.text = "\(currentMinutePlusOne)"
        } else {
            self.nextMinuteLabel.text = "" }
        
        if currentMinutePlusTwo < GameTime + 1 {
            self.plusTwoMinutesLabel.text = "\(currentMinutePlusTwo)"
        } else {
            self.plusTwoMinutesLabel.text = ""
        }
        print("Minute \(currentMinute)")
    }
    
    //actions
    @IBAction func twoPointerPressed(_ sender: UIButton) {
        pointsOfAction = 2
        let button2p = sender
        if button2p.isSelected == true {
            button2p.isSelected = false
        } else {
            button2p.isSelected = true
        }
        print("2p selected")
        /*    currentScoreTeamOne = currentScoreTeamOne + 2
         currentScoreTeamOneLabel.text = "\(currentScoreTeamOne)"
         */
    }
    
    @IBAction func threePointsPressed(_ sender: UIButton) {
        pointsOfAction = 3
        let button3p = sender
        if button3p.isSelected == true {
            button3p.isSelected = false
        } else {
            button3p.isSelected = true
        }
        print("3p selected")
        
    }
    
    @IBAction func FTmadePressed(_ sender: UIButton) {
        pointsOfAction = 1
        let buttonFT = sender
        if buttonFT.isSelected == true {
            buttonFT.isSelected = false
        } else {
            buttonFT.isSelected = true
        }
        print("FT selected")
    }
    //player
    
    @IBAction func numberFourPressed(_ sender: UIButton) {
        playerOfAction = 4
        let buttonPlayer4 = sender
        if buttonPlayer4.isSelected == true {
            buttonPlayer4.isSelected = false
        } else {
            buttonPlayer4.isSelected = true
        }
        print("Player4 selected")
    }
    @IBAction func numberFivePressed(_ sender: UIButton) {
        playerOfAction = 5
        let buttonPlayer5 = sender
        if buttonPlayer5.isSelected == true {
            buttonPlayer5.isSelected = false
        } else {
            buttonPlayer5.isSelected = true
        }
        print("Player5 selected")
    }
    @IBAction func numberSixPressed(_ sender: UIButton) {
        playerOfAction = 6
        let buttonPlayer6 = sender
        if buttonPlayer6.isSelected == true {
            buttonPlayer6.isSelected = false
        } else {
            buttonPlayer6.isSelected = true
        }
        print("Player6 selected")
    }
    
    //saveButton
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
    }
    
}
