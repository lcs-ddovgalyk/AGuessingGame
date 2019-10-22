//
//  ViewController.swift
//  AGuessingGame
//
//  Created by Dima Dovgalyk on 2019-10-08.
//  Copyright © 2019 Dima Dovgalyk. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //PROPERTIES
    let targetNumber = Int.random(in: 1...100)
    @IBOutlet weak var submittedGuess: UITextField!
    
    //INITIALIZERS
    
    
    //BEHAVIOURS (functions)
    
    
    
    //runs as soon as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
     speak(message: "I am thinking of a number between 1 and 100. Guess what it is.")
        
    }
    
    //this function will be used to check the guess
    @IBAction func checkGuess(_ sender: Any) {
        
        //Obtain the guess value to the text field
        let guessText = submittedGuess.text!
        let guessNumber = Int(guessText)!
        
        //For testing purposes, what was the guess?
        print("For testing purposes, the guess was \(guessNumber)")
        
        //give the appropriate feedback to the user
        
        if guessNumber > targetNumber {
            speak(message: "Guess lower next time")

            print("Guess lower next time")
        } else if guessNumber < targetNumber {
            speak(message: "Guess higher next time")

            //print the message

            print("Guess higher next time")
        } else {
            speak(message: "You are correct")

            //print the message
            print("You are correct")
        }
    
    }
    
    //a functuin that will speak whatever message is provided
    func speak(message: String) {
        //Make an object named 'synthesizer', which is an instance of the class 'AVSpeechSynthesizer'
        let synthesizer = AVSpeechSynthesizer()
       
        
        //make an object named 'utturance', which is an instance of a class AVSpeechUtturance
        let utturance = AVSpeechUtterance(string: message)
        
        //speak the message
        synthesizer.speak(utturance)
    }
    
}



