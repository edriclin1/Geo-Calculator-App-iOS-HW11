//
//  Weather.swift
//  Geo Calculator App
//
//  Created by student on 6/11/18.
//  Copyright © 2018 GVSU. All rights reserved.
//

import Foundation

struct Weather {
    var iconName : String
    var temperature : Double
    var summary : String
    init(iconName: String, temperature: Double, summary: String) {
        self.iconName = iconName
        self.temperature = temperature
        self.summary = summary
    }
}
protocol WeatherService {
    func getWeatherForDate(date: Date, forLocation location: (Double, Double),
                           completion: @escaping (Weather?) -> Void)
}
