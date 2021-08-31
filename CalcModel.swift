//
//  CalcModel.swift
//  Fireball-SwiftUI
//
//  Created by Piotr Ćwiertnia on 31/08/2021.
//

import Foundation

struct CalcModel {
    
    var rolls: [Int] = [1,2,3,4,5,6,1,2]
    var result: Int {
        var result = 0
        for roll in rolls {
            result += roll
        }
        return result
    }
    
    init() {
        roll()
    }
    
    mutating func roll() {
        for index in 0...7 {
            rolls[index] = Int.random(in: 1...6)
        }
    }
    
    func getRoll(forDice n: Int) -> Int {
        return rolls[n-1]
    }
}
