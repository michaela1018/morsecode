//
//  Functions.swift
//  morsecode
//
//  Created by Jin Seok Ahn on 4/15/19.
//  Copyright © 2019 Jin Seok Ahn. All rights reserved.
//

import Foundation

    let convertChart = [ // space [0]
                                "|",
                                // 0~9 [1~10]
                                "-----",".----","..---","...--","....-",".....","-....","--...","---..","----.",
                                // a~m [11~23]
                                ".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--",
                                // n~z [24~36]
                                "-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
    
    func convertToMorse (input : String) -> String? {
        
        var morse:String = "";
        var prevNonSpace:Bool = false;
        
        for char in input {
            let ascii = Int(char.asciiValue!)
            let morseCodeChar: String
            if (ascii == 32) {
                morseCodeChar = convertChart[0]
                prevNonSpace = false
            } else {
                if (ascii >= 48 && ascii <= 57){
                    morseCodeChar = convertChart[ascii%48+1]
                } else if (ascii >= 65 && ascii <= 90) {
                    morseCodeChar = convertChart[ascii%65+11]
                } else if (ascii >= 97 && ascii <= 122) {
                    morseCodeChar = convertChart[ascii%97+11]
                } else {
                return nil
                }
                
                if (prevNonSpace) {
                    morse.append(" ")
                }
                prevNonSpace = true;
            }
            morse.append(morseCodeChar)
        }
        return morse
    }
