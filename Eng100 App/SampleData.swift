//
//  SampleData.swift
//  Eng100 App
//
//  Created by Sumit Dhar on 10/26/23.
//

import Foundation

struct Pollutant_Data: Identifiable {
    let id = UUID()
    let time: String
    let level: Double
 
}

let Radon_Data = [Pollutant_Data(time: "3:20 pm", level: 0.8), Pollutant_Data(time: "3:40 pm", level: 1), Pollutant_Data(time: "4:00 pm", level: 0.5)]

let CO2_Data = [Pollutant_Data(time: "3:20 pm", level: 220), Pollutant_Data(time: "3:40 pm", level: 330), Pollutant_Data(time: "4:00 pm", level: 580)]

let Humidity_Data = [Pollutant_Data(time: "3:20 pm", level: 40), Pollutant_Data(time: "3:40 pm", level: 20), Pollutant_Data(time: "4:00 pm", level: 35)]

let PM25_Data = [Pollutant_Data(time: "3:20 pm", level: 0.03), Pollutant_Data(time: "3:40 pm", level: 0.02), Pollutant_Data(time: "4:00 pm", level: 0.02)]

//let leaderboard_data = ["j"]
