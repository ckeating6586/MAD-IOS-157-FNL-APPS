//
//  ViewController.swift
//  Alert-Picker-Mini-App
//
//  Created by Carmen on 2/16/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var labelResult: UILabel!
    
    @IBOutlet var myDatePicker: UIDatePicker!
    let dateFormatter: DateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelResult.numberOfLines = 0
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        // Do any additional setup after loading the view.
        
        
        
    }

   
    @IBAction func buttonTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "What's your name?", message: "Enter your name", preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: {(textField) in textField.placeholder = "Name Here";})
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {action -> Void in
            let  savedText = alert.textFields![0] as UITextField
            self.labelResult.text = savedText.text
        })
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    func ShowAlert(dateTime: String) {
        let alert = UIAlertController(title: "Yes, Selected Date and Time is available", message: "\(dateTime)", preferredStyle: .alert)
        
        let OkAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in})
        alert.addAction(OkAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func getCurrentDateTime(_ sender: UIButton) {
        let selectedDate:String = dateFormatter.string(from: myDatePicker.date)
        ShowAlert(dateTime: selectedDate)
    }
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        let selectedDate: String = dateFormatter.string(from: sender.date)
        ShowAlert(dateTime: selectedDate)
    }
    
}

