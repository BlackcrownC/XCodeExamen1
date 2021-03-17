//
//  Temperature.swift
//  Examen1
//
//  Created by Mac11 on 2021-03-17.
//

import Foundation
import UIKit

class Temperature {
    
    
    var dateTemp: Date
    var valueTemp: Int
    var iconWeather: UIImage
    
    internal init(dateTemp: Date, valueTemp: Int) {
        self.dateTemp = dateTemp
        self.valueTemp = valueTemp
        switch valueTemp {
        case -20...0:
            self.iconWeather = UIImage(named: "Winter")!
            break
        case 1...10:
            self.iconWeather = UIImage(named: "Fall")!
            break
        case 11...20:
            self.iconWeather = UIImage(named: "Spring")!
            break
        case 21...35:
            self.iconWeather = UIImage(named: "Summer")!
            break
        default:
            self.iconWeather = UIImage()
            break
        }
    }
}
