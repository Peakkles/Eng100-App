//
//  SettingsTab.swift
//  Eng100 App
//
//  Created by Sumit Dhar on 11/26/23.
//

import SwiftUI

class SettingsData: ObservableObject {
    @Published var boldtext: Bool = false
}

struct SettingsTab: View {
    @ObservedObject var settingsData = SettingsData()
    
    @State var colorblindMode: Bool = false
//    @State var boldtext: Bool = false
    @State var audioSetting: Bool = false
    @State var fontSize = 50.0
    
    
    
    var body: some View {
        
        ZStack {
//            Rectangle()
//                .foregroundColor(Color(.background))
//                .ignoresSafeArea()
            VStack {
                List {
                    Text("Visual Settings").font(.largeTitle).bold()
                    Toggle(isOn: $colorblindMode) {
                        Text("Colorblind Friendly Mode")
                    }
                    .tint(Color(.orange))
                    .accessibilityAddTraits(.isToggle)
                    Toggle(isOn: $settingsData.boldtext) {
                        Text("Bold Text")
                            .bold(settingsData.boldtext)
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
                    
                    Text("Auditory Settings").font(.largeTitle).bold()
                    Toggle(isOn: $audioSetting) {
                        Text("Enable Text to Speech")
                    }
                }
                
                Spacer()
            }
        }
        
        
        
    }
}
