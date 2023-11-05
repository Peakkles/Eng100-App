//
//  BoxViewModel.swift
//  Eng100 App
//
//  Created by Sumit Dhar on 11/4/23.
//

import SwiftUI


class BoxViewModel: ObservableObject {
    @Published var boxes: [Box] = []
    
    init() {
        clear()
    }
    
    var rowSelected:Int = -1
    var columnSelected:Int = -1
    var isRow = true
    
    func updateSelected (r:Int, c:Int) {
        if r == rowSelected && c == columnSelected {
            isRow.toggle()
        }
        rowSelected = r
        columnSelected = c
    }
    
    func clear () {
        boxes = initialBoxes
    }
    
    func isSolved(answer:[String]) -> Bool {
        for i in 0...24 {
            if boxes[i].char.uppercased() != answer[i].uppercased() {
                return false
            }
        }
        return true
    }
}

var initialBoxes = [Box(row: 0, column: 0), Box(row: 0, column: 1), Box(row: 0, column: 2), Box(row: 0, column: 3), Box(row: 0, column: 4), Box(row: 1, column: 0), Box(row: 1, column: 1), Box(row: 1, column: 2), Box(row: 1, column: 3), Box(row: 1, column: 4), Box(row: 2, column: 0), Box(row: 2, column: 1), Box(row: 2, column: 2), Box(row: 2, column: 3), Box(row: 2, column: 4), Box(row: 3, column: 0), Box(row: 3, column: 1), Box(row: 3, column: 2), Box(row: 3, column: 3), Box(row: 3, column: 4), Box(row: 4, column: 0), Box(row: 4, column: 1), Box(row: 4, column: 2), Box(row: 4, column: 3), Box(row: 4, column: 4)]



