//
//  DataTab.swift
//  Eng100 App
//
//  Created by Sumit Dhar on 11/26/23.
//

import SwiftUI
import Charts

enum Pollutants: String, CaseIterable, Identifiable {
    case Radon, CO2, Humidity, PM25
    var id: Self { self }
}

struct DataView: View {
    @State private var selectedFlavor: Pollutants = .Radon
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.background)
                .ignoresSafeArea()
            VStack {
                Text("You are currently in the healthy zone!").font(.largeTitle).foregroundStyle(.green).bold()
                Picker("Pollutants", selection: $selectedFlavor) {
                    Text("Radon").tag(Pollutants.Radon)
                    Text("CO2").tag(Pollutants.CO2)
                    Text("PM2.5").tag(Pollutants.PM25)
                    Text("Humidity").tag(Pollutants.Humidity)
                }
                if (selectedFlavor == Pollutants.Radon) {
                    VStack {
                        Text("Radon (in pCi/L) over time")
                        Chart {
                            ForEach(Radon_Data) { item in
                                LineMark(
                                    x: .value("time", item.time),
                                    y: .value("value", item.level)
                                )
                            }
                        }
                        .frame(width: .infinity, height: screenSize.height/3)
                        .foregroundStyle(.orange)
                        .background(.white)
                        .padding()
                        .chartYScale(domain: [0, 2])
                    }
                }
                if (selectedFlavor == Pollutants.CO2) {
                    VStack {
                        Text("CO2 (in ppm) over time")
                        Chart {
                            ForEach(CO2_Data) { item in
                                LineMark(
                                    x: .value("time", item.time),
                                    y: .value("value", item.level)
                                )
                            }
                        }
                        .frame(width: .infinity, height: screenSize.height/3)
                        .foregroundStyle(.orange)
                        .background(.white)
                        .padding()
                        .chartYScale(domain: [0, 700])
                    }
                }
                
                if (selectedFlavor == Pollutants.Humidity) {
                    VStack {
                        Text("Humidity (in %) over time")
                        Chart {
                            ForEach(Humidity_Data) { item in
                                LineMark(
                                    x: .value("time", item.time),
                                    y: .value("value", item.level)
                                )
                            }
                        }
                        .frame(width: .infinity, height: screenSize.height/3)
                        .foregroundStyle(.orange)
                        .background(.white)
                        .padding()
                        .chartYScale(domain: [0, 100])
                    }
                }
                
                if (selectedFlavor == Pollutants.PM25) {
                    VStack {
                        Text("PM2.5 (in mg/m³) over time")
                        Chart {
                            ForEach(PM25_Data) { item in
                                LineMark(
                                    x: .value("time", item.time),
                                    y: .value("value", item.level)
                                )
                            }
                        }
                        .frame(width: .infinity, height: screenSize.height/3)
                        .foregroundStyle(.orange)
                        .background(.white)
                        .padding()
                        .chartYScale(domain: [0, 0.05])
                    }
                }
                
                Text("Suggested Resources")
                Link("helpful link 1", destination: URL(string: "google.com")!).font(.system(size: 17))
                Link("helpful link 2", destination: URL(string: "google.com")!)
                
            }
        }
    }
}

