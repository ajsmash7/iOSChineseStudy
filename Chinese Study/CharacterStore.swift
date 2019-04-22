//
//  CharacterStore.swift
//  Chinese Study
//
//  Created by AJMac on 4/3/19.
//  Copyright © 2019 AJMac. All rights reserved.
//

import Foundation

class CharacterStore {
    
    var chars: [Char]
    
    init() {
        let snow = Char(chineseCharacter: "雪", pinyin: "xuě", englishTranslation: "Snow")
        let wind = Char(chineseCharacter: "风", pinyin: "fēng", englishTranslation: "Wind")
        let rain = Char(chineseCharacter: "雨", pinyin: "yǔ", englishTranslation: "Rain")
        let warm = Char(chineseCharacter: "暖和", pinyin: "nuǎnhuo", englishTranslation: "Warm")
        let sunny = Char(chineseCharacter: "晴朗", pinyin: "qínglǎng", englishTranslation: "Sunny")
        let fog = Char(chineseCharacter: "雾", pinyin: "wù", englishTranslation: "Fog")
        
        chars = [snow, wind, rain, warm, sunny, fog]
        
        chars = shuffle(arrayChars: chars)!
        
    }
    
    func shuffle (arrayChars: [Char]) -> [Char]? {
        
        var charArray = arrayChars
        var shuffled = [Char]()
        
        for _ in 0..<charArray.count {
            let rand = Int(arc4random_uniform(UInt32(charArray.count)))
            
            shuffled.append(charArray[rand])
            charArray.remove(at: rand)
            
        }
        
        return shuffled
        
    }
}
