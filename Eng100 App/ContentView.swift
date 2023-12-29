
//  ContentView.swift
//  Eng100 App
//
//  Created by Sumit Dhar on 10/26/23.
//

import SwiftUI

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
                        Label("Data",
                              systemImage: "chart.bar")
                    }
                
                LeaderboardTab()
                .tabItem {
                    Label("Leaderboard",
                          systemImage: "trophy")
                }
                RecommendationTab()
                    .tabItem {
                        Label("Tips",
                              systemImage: "book")
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

struct RecommendationTab: View {
//    @ObservedObject var settingsData = SettingsData()
    
    var body: some View {
        ZStack {
            List {
                Text("Recommendations").font(.largeTitle)
                VStack {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In non rutrum leo. Donec rhoncus lacinia posuere. Nulla blandit dolor at mi consectetur faucibus. Nulla est eros, convallis non pharetra id, eleifend vitae justo. Suspendisse potenti. Etiam sed mi eget metus convallis tincidunt. Maecenas tempor luctus nisi nec scelerisque. Ut efficitur laoreet turpis et accumsan.")
                    Link("Learn More", destination: URL(string: "google.com")!)
                }
                VStack {
                    Text("Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ut diam gravida, venenatis ante ut, laoreet libero. Sed euismod, neque eu pretium elementum, leo felis efficitur orci, et pretium urna nibh non ligula. Sed convallis leo eu lacus fringilla, non ultrices sem feugiat. Ut faucibus turpis diam. Nunc fermentum quis diam suscipit varius.")
                    Link("Learn More", destination: URL(string: "google.com")!)
                }
            }
        }
    }
}

struct LeaderboardTab: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.background)
                .ignoresSafeArea()
            VStack {
                Spacer().frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                Text("Share with your friends!")
                    .font(.largeTitle)
//                Image(systemName: "square.and.arrow.up")
//                    .font(.system(size: 100))
//                    .foregroundColor(.blue)
                ShareLink(item: "https://github.com/Peakkles/Eng100-App")
                    .font(.largeTitle)
                    
                    
                    
                
                HStack {
                    VStack {
                        Spacer()
                        Text("User 3").font(.title3)
                        Rectangle()
                            .foregroundColor(.gray)
                            .frame(width: 100, height: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            .overlay(Text("2nd").font(.title))
                    }
                    VStack {
                        Spacer()
                        Text("User 1").font(.title3)
                        Rectangle()
                            .foregroundColor(.yellow)
                            .frame(width: 100, height: 300)
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            .overlay(Text("1st").font(.title))
                        
                    }
                    VStack {
                        Spacer()
                        Text("User 4").font(.title3)
                        Rectangle()
                            .foregroundColor(.brown)
                            .frame(width: 100, height: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            .overlay(Text("3rd").font(.title))
                    }
                }
                Spacer()
                HStack {
                    Text("You're in")
                    Text("506th").font(.largeTitle)
                    Text("place")
                }
                Spacer()
                
            }
        }
        
    }
}
