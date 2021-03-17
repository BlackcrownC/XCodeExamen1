//
//  TempsTableViewController.swift
//  Examen1
//
//  Created by Mac11 on 2021-03-17.
//

import UIKit

class TempsTableViewController: UITableViewController {

    var cityData = [City(nameCity: "Montreal"), City(nameCity: "Quebec"), City(nameCity: "Laval"), City(nameCity: "Sherbrooke")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cityData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TempsCell", for: indexPath) as! TempsTableViewCell

        cell.cityNameLabel.text = cityData[indexPath.row].nameCity
        cell.tempLabel.text = String(cityData[indexPath.row].temperatures[0].valueTemp) + "°C"
        cell.weatherImg.image = cityData[indexPath.row].temperatures[0].iconWeather

        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let idSegue = segue.identifier
        if idSegue == "detailCitySegue" {
            let cell = sender as? UITableViewCell
            let index = tableView.indexPath(for: cell!)?.row
            let destination = segue.destination as? CityDetailViewController
            let cityTouched = cityData[index!]
            destination?.city = cityTouched
        }
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
    

}
