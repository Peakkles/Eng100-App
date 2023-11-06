
//  ContentView.swift
//  Eng100 App
//
//  Created by Sumit Dhar on 10/26/23.
//

import SwiftUI
import Charts
let screenSize: CGRect = UIScreen.main.bounds


struct ContentView: View {
    var body: some View {
        TabView {
            Group {
                PlayTab()
                    .tabItem {
                        Label("Play",
                              systemImage: "gamecontroller")
                    }
                DataView()
                    .tabItem {
                        Label("data",
                              systemImage: "chart.bar")
                    }
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.background)
                        .ignoresSafeArea()
                    Text("Tab 3")
                }
                .tabItem {
                    Label("Leaderboard",
                          systemImage: "trophy")
                }
                SettingsTab()
                    .tabItem {
                        Label("Settings",
                              systemImage: "gearshape")
                    }
            }
            .toolbarBackground(Color.black, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
        }
    }
}

#Preview {
    ContentView()
}

struct DataView: View {
    var body: some View {
        Text("Tab 2")
            
    }
}

struct SettingsTab: View {
    @State var colorblindMode: Bool = false
    @State var boldtext: Bool = false
    @State var fontSize = 50.0
    
    
    
    var body: some View {
        
        ZStack {
//            Rectangle()
//                .foregroundColor(Color(.background))
//                .ignoresSafeArea()
            VStack {
                List {
                    Toggle(isOn: $colorblindMode) {
                        Text("Colorblind Friendly Mode")
                    }
                    .tint(Color(.orange))
                    .accessibilityAddTraits(.isToggle)
                    Toggle(isOn: $boldtext) {
                        Text("Bold Text")
                            .bold(boldtext)
                    }
                    .accessibilityAddTraits(.isToggle)
                
                    Text("Font Size \(Int(fontSize))")
                        .font(.system(size: fontSize))
                    Slider(
                        value: $fontSize,
                        in: 12...100,
                        onEditingChanged: { editing in
                        }
                    )
                    
                    Text("test")
                }
                
                Spacer()
            }
        }
        
        
        
    }
}
