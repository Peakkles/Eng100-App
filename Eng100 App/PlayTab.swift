//
//  PlayTab.swift
//  Eng100 App
//
//  Created by Sumit Dhar on 11/5/23.
//

import SwiftUI

struct PlayTab: View {
    @State var crossword: CrosswordData = Crosswords[0]
    @ObservedObject var boxGrid = BoxViewModel()
    
    
    var body: some View {
        
        ZStack {
            NavigationStack {
                ScrollView {
                    VStack {
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 5)) {
                            ForEach($boxGrid.boxes) { $textField in
                                
                                ZStack {
                                    TextField("", text: $textField.char)
                                        .font(.largeTitle)
                                        .onChange(of: textField) {
                                            if textField.char.count > 1 {
                                                textField.char.removeFirst()
                                            }
                                        }
                                        .onTapGesture {
                                            boxGrid.updateSelected(r: textField.row, c: textField.column)
                                        }
                                        .frame(width:screenSize.width/6,
                                               height: screenSize.width/6)
                                        .border(.black)
                                        .background(crossword.answers[5*textField.row + textField.column] == "" ? Color(.black) : ((boxGrid.isRow && textField.row == boxGrid.rowSelected) || (!boxGrid.isRow && textField.column == boxGrid.columnSelected) ? Color(.yellow) : Color(.white)))
                                    
                                        .disabled(crossword.answers[5*textField.row + textField.column] == "" ? true : false)
                                        .multilineTextAlignment(.center)
                                    
                                    if crossword.numbers.keys.contains(5*textField.row + textField.column) {
                                        HStack {
                                            VStack {
                                                Text(" " + crossword.numbers[5*textField.row + textField.column]!)
                                                Spacer()
                                            }
                                            Spacer()
                                        }
                                    }
                                }
                            }
                        }
                        .padding()
                        
                        Rectangle()
                            .frame(width: .infinity, height: 2)
                            .padding(.leading).padding(.trailing)
                        
                        HStack {
                            VStack {
                                Text("Across")
                                    .underline()
                                ForEach($crossword.AcrossClues, id: \.self) { $clue in
                                    HStack {
                                        Text(clue)
                                            .onTapGesture {
                                                
                                            }
                                        Spacer()
                                    }
                                }
                                Spacer()
                            }
                            Spacer()
                            VStack {
                                Text("Down")
                                    .underline()
                                ForEach($crossword.DownClues, id: \.self) { $clue in
                                    HStack {
                                        Text(clue)
                                        Spacer()
                                    }
                                }
                                Spacer()
                            }
                        }
                        .padding(.leading).padding(.top)
                        
                        Button("clear", action: {boxGrid.clear()})
                        
                    }
                }
                .navigationTitle("Mini Crossword")
            }
            
            if boxGrid.isSolved(answer: crossword.answers){
                Text("You Win")
                    .foregroundStyle(Color(.white))
                    .font(.largeTitle)
                    .frame(width: screenSize.width/2, height: screenSize.height/4)
                    .background(Color(.red))
                    .cornerRadius(10)
            }
        }
    }
}
