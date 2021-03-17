//
//  City.swift
//  Examen1
//
//  Created by Mac11 on 2021-03-17.
//

import Foundation

class City {
    internal init(nameCity: String) {
        self.nameCity = nameCity
        self.temperatures = [Temperature]()
        
        let currentDate = Date()
        let calendar = Calendar.current
        let nowDateComponents = calendar.dateComponents([.day, .month, .year], from: currentDate)
        let month = nowDateComponents.month
        
        var dayComponent = DateComponents()
        dayComponent.day = 1
        var nextDate = currentDate
        while month == calendar.dateComponents([.month], from: nextDate).month {
            var zone: Int
            switch nowDateComponents.month  {
            case 1,2:
                zone = 1
                break
            case 3:
                if calendar.dateComponents([.day], from: nextDate).day! <= 21 {
                    zone = 1
                } else {
                    zone = 2
                }
                break
            case 4,5:
                zone = 2
                break
            case 6:
                if calendar.dateComponents([.day], from: nextDate).day! <= 21 {
                    zone = 2
                } else {
                    zone = 3
                }
                break
            case 7,8:
                zone = 3
                break
            case 9:
                if calendar.dateComponents([.day], from: nextDate).day! <= 21 {
                    zone = 3
                } else {
                    zone = 4
                }
                break
            case 10,11:
                zone = 4
                break
            case 12:
                if calendar.dateComponents([.day], from: nextDate).day! <= 21 {
                    zone = 4
                } else {
                    zone = 1
                }
                break
            default:
                zone = 0
            }
            
            switch zone {
            case 1:
                temperatures.append(Temperature(dateTemp: nextDate, valueTemp: Int.random(in: -20...15)))
                break
            case 2:
                temperatures.append(Temperature(dateTemp: nextDate, valueTemp: Int.random(in: 5...25)))
                break
            case 3:
                temperatures.append(Temperature(dateTemp: nextDate, valueTemp: Int.random(in: 10...35)))
                break
            case 4:
                temperatures.append(Temperature(dateTemp: nextDate, valueTemp: Int.random(in: -10...15)))
                break
            default:
                temperatures.append(Temperature(dateTemp: nextDate, valueTemp: -99))
            }
            
            nextDate = calendar.date(byAdding: dayComponent, to: nextDate)!
        }
        
    }
    
    var nameCity: String
    var temperatures: [Temperature]
}
