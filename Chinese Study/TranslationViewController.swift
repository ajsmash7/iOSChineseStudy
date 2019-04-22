//
//  ViewController.swift
//  Chinese Study
//
//  Created by AJMac on 4/3/19.
//  Copyright © 2019 AJMac. All rights reserved.
//

import UIKit
import AVFoundation

class TranslationViewController: UIViewController {

    @IBOutlet var chineseCharacter: UILabel!
    @IBOutlet var pinyin: UILabel!
    @IBOutlet var englishTranslation: UILabel!
    
    var char: Char?
    let synthesizer = AVSpeechSynthesizer()
    let voice = AVSpeechSynthesisVoice(language: "zh-CN")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        guard let char = char else { return }
        chineseCharacter.text = char.chineseCharacter
        pinyin.text = char.pinyin
        englishTranslation.text = char.englishTranslation
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func readAloudTapped(_ sender: Any) {
        guard let char = char else {return}
        let audio = AVSpeechUtterance(string:char.chineseCharacter)
        audio.voice = voice
        synthesizer.speak(audio)
    }
}

