//
//  Pokemon.swift
//  Pokelator
//
//  Created by Frederick Clausen II on 9/9/20.
//  Copyright © 2020 Frederick Clausen II. All rights reserved.
//

import Foundation

class Pokemon {
    var num = 0
    var name = ""
    var types =  ["", ""]
    var genderRatioM = 50
    var genderRatioF = 50
    var baseStats = [Int] (repeating: 0, count: 6)
    var abilities = [String]()
    var heightm = 0.0
    var weightkg = 0.0
    var color = ""
    var evos = ""
    var eggGroups = [String]()
    
    init() {
        
    }
    
    func setDexNumber(dex: Int) -> Void {
        num = dex
    }
    
    func setName(mon: String) -> Void {
        name = mon
    }
    
    func setTypes(type: [String?]) -> Void {
        types[0] = type[0]!
        types[1] = type[1]!
    }
    
    func setbaseStats(stats: [Int?]) -> Void {
        baseStats[0] = stats[0]!
        baseStats[1] = stats[1]!
        baseStats[2] = stats[2]!
        baseStats[3] = stats[3]!
        baseStats[4] = stats[4]!
        baseStats[5] = stats[5]!
    }
    
    func getDexNumber() -> Int {
        return num
    }
    
    func getName() -> String {
        return name
    }
    
    func getHP() -> Int {
        return baseStats[0]
    }
    
    func getATK() -> Int {
        return baseStats[1]
    }
    
    func getDEF() -> Int {
        return baseStats[2]
    }
    
    func getSPA() -> Int {
        return baseStats[3]
    }
    
    func getSPD() -> Int {
        return baseStats[4]
    }
    
    func getSPE() -> Int {
        return baseStats[5]
    }
    
    func getTypes() -> (String, String) {
        return (types[0], types[1])
    }
}
