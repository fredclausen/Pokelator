//
//  ReadFiles.swift
//  Pokelator
//
//  Created by Frederick Clausen II on 9/8/20.
//  Copyright © 2020 Frederick Clausen II. All rights reserved.
//

import Foundation

func readFiles() {
    if let fileURL = Bundle.main.url(forResource: "pokedex", withExtension: "ts") {
        // we found the file in our bundle!
        print("File Loading...")
        do {
            let file = try String (contentsOf: fileURL)
            
            let text: [String] = file.components(separatedBy: "\n")
            var Pokemon = PokeSplitter(Dex: text)
            
        } catch {
            print(error)
        }
    } else {
        print("File not found...")
    }
}
