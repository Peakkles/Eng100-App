//
//  CrosswordData.swift
//  Eng100 App
//
//  Created by Sumit Dhar on 10/31/23.
//

import Foundation

struct CrosswordData: Hashable, Identifiable {
    var id = UUID()
    var AcrossClues: [String]
    var DownClues: [String]
    var numbers: [Int: String]
    var answers: [String]
}

let Crosswords = [
    CrosswordData(
        AcrossClues: ["1. Black-and-white equipment", "4. Thanksgiving side dish", "6. Black-and-white animal", "8. Opposite of WSW", "9. Black-and-white snack"],
        DownClues: ["1. Catch some Z's", "2. Internet prefix", "3. pointy part of Mr. Spock", "5. BLT condiment", "7. Rock musician Brian"],
        numbers: [0:"1", 2:"2", 3:"3", 7:"4", 9:"5", 10:"6", 11:"7", 15:"8", 21:"9"],
        answers: ["D", "I", "C", "E", "", "O", "", "Y", "A", "M", "Z", "E", "B", "R", "A", "E", "N", "E", "", "Y", "", "O", "R", "E", "O"])
]
