//
//  Box.swift
//  Eng100 App
//
//  Created by Sumit Dhar on 11/4/23.
//

import SwiftUI

struct Box: Identifiable, Equatable {
    let id = UUID()
    var char: String = ""
    var row: Int
    var column: Int
    var color: Color = Color(.white)
    var focused: Bool = false
}
