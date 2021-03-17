//
//  CityDetailViewController.swift
//  Examen1
//
//  Created by Mac11 on 2021-03-17.
//

import UIKit

class CityDetailViewController: UIViewController {

    @IBOutlet weak var dateLabel1: UILabel!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var tempLabel1: UILabel!
    var city: City!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMMM"
        
        dateLabel1.text = dateFormatter.string(from: city.temperatures[0].dateTemp)
        imageView1.image = city.temperatures[0].iconWeather
        tempLabel1.text = String(city.temperatures[0].valueTemp) + "°C"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
