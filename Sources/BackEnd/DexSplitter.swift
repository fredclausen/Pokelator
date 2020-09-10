//
//  DexSplitter.swift
//  Pokelator
//
//  Created by Frederick Clausen II on 9/9/20.
//  Copyright © 2020 Frederick Clausen II. All rights reserved.
//

import Foundation

func PokeSplitter(Dex: [String]) -> [Pokemon] {
    let PokeArray = [Pokemon]()
    let newMon = Pokemon()
    let regexJustIntNumbers = "[0-9]+"
    let regexJustIntsAllRange = "-?[0-9]*\\.?[0-9]+"
    let regexString = "[a-zA-Z0-9]+-?[[:blank:]]?[a-zA-Z0-9]*+-?[[:blank:]]?[a-zA-Z0-9]*+-?[[:blank:]]?[a-zA-Z0-9]*"
    
    for line in Dex {
        if(!line.hasPrefix("export")) { // Is not the start of the file
            let trimmedLine = line.trim()
            if(trimmedLine.hasPrefix("name:")) {
                let name = trimmedLine.match(regexString)
                newMon.setName(mon: name[1][0])
                print(newMon.getName())
            } else if(trimmedLine.hasPrefix("baseStats:")) {
                let stats = trimmedLine.match(regexJustIntNumbers)
                let hp = Int(stats[0][0])
                let atk = Int(stats[1][0])
                let def = Int(stats[2][0])
                let spa = Int(stats[3][0])
                let spd = Int(stats[4][0])
                let spe = Int(stats[5][0])
                
                let statsArray : [Int?] = [hp, atk, def, spa, spd, spe]
                newMon.setbaseStats(stats: statsArray)
            } else if(trimmedLine.hasPrefix("abilities:")) {
                //let abilities = trimmedLine.match(regexString)
                
            } else if(trimmedLine.hasPrefix("types:")) {
                let types = trimmedLine.match(regexString)
                
                var typeArray : [String] = ["", ""]
                
                for (index, _) in types.enumerated() {
                    if index != 0 {
                        typeArray[index-1] = types[index][0]
                    }
                }
                
                newMon.setTypes(type: typeArray)
                print(newMon.getTypes())
            } else if(trimmedLine.hasPrefix("num:")) {
                let num = trimmedLine.match(regexJustIntsAllRange)
                let dexNum = Int(num[0][0]) ?? 0
                newMon.setDexNumber(dex: dexNum)
            }
        }
    }
    return PokeArray
}
