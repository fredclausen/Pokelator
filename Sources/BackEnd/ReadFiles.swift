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
            let text = try String (contentsOf: fileURL)
            print(text)
        } catch {
            print(error)
        }
    } else {
        print("File not found...")
    }
}
