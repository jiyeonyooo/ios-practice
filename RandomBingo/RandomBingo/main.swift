//
//  main.swift
//  RandomBingo
//
//  Created by 유지연 on 1/20/25.
//

import Foundation

var computerChoice = Int.random(in: 1...100)
var myChoice: Int = 0

while true {
    
    var userInput = readLine()
    //userInput 의 자료형은 optional String
    
    if let input = userInput {
        if let number = Int(input) {
            myChoice = number
        }
    }
    
    if computerChoice > myChoice {
        print("UP")
    } else if computerChoice < myChoice {
        print("DOWN")
    } else if computerChoice == myChoice {
        print("BINGO!")
        break
    }
}

