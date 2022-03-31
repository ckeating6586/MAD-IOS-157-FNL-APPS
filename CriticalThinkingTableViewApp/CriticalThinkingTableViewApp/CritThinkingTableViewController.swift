//
//  CritThinkingTableViewController.swift
//  CriticalThinkingTableViewApp
//
//  Created by Carmen on 3/31/22.
//

import UIKit

class CritThinkingTableViewController: UITableViewController {
    
    
    @IBOutlet var menuTable: UITableView!
    
    let menuArray = [["Baked Goods", "blueberry muffin", "butter croissant", "berry and cheese danish", "jalapeno chedder foccacia"],
                     ["Sandwiches", "Chipotle Chicken Melt", "Sausage and Peppers", "Meatball Sub", "Turkey Avocado Melt", "Italian Sub", "Pastrami Rueben"],
                     ["Salads", "Chicken Ceasar Salad", "Apple Walnut & Bri Salad", "Greek Salad", "Cobb Salad"],
                     ["Small Plates", "Cajun Tator Tots", "Olives & Hummas Platter", "Stuffed Grape Leaves", "Spanish Meatballs", "Ham & Cheese Croquettes", "Marinated Mushrooms", "Three Beef Empanadas"],
                     ["Drinks", "Strawberry Lemonade Spritzer", "Lavender Lemonade", "Hot Chocolate", "Chai Latte", "Drip Coffee"]]
    
    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuTable.dataSource = self
        menuTable.delegate = self
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuArray[section].count - 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if (cell == nil){
            cell = UITableViewCell(
                style: UITableViewCell.CellStyle.default, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = menuArray[indexPath.section][indexPath.row + 1]
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let selectedItem = menuArray[indexPath.section][indexPath.row + 1]
        let alert = UIAlertController(title: "Your Choice", message: "\(selectedItem)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in})
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return menuArray.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return menuArray[section][0]
    }

}
