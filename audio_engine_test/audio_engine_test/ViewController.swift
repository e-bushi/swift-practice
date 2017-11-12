//
//  ViewController.swift
//  audio_engine_test
//
//  Created by Chris Mauldin on 11/11/17.
//  Copyright © 2017 Chris Mauldin. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVSpeechSynthesizerDelegate, UITextFieldDelegate {
    

    @IBOutlet weak var userInputText: UITextField!
    var userInput: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.userInputText.enablesReturnKeyAutomatically = true
        self.userInputText.clearsOnBeginEditing = true
        self.userInputText.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userInput = userInputText.text!
        
        return false
    }
    
    

    @IBAction func speakText(_ sender: Any) {
        let textToSpeak = AVSpeechUtterance(string: userInput)
        textToSpeak.rate = 0.2
        let speakerVoice = AVSpeechSynthesisVoice(language: "en-US")
        let speak = AVSpeechSynthesizer()
        textToSpeak.voice = speakerVoice
        speak.delegate = self
        speak.speak(textToSpeak)
    }
    
}

