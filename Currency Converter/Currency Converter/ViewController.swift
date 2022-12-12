//
//  ViewController.swift
//  Currency Converter
//
//  Created by Grigore on 08.12.2022.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var convertedLabel: UILabel!
    
    @IBOutlet weak var rateSpot: UITextField!
    
    @IBOutlet weak var amountSpot: UITextField!
    
    @IBOutlet weak var switcher: UISegmentedControl!
    
    let signeUSA = "EUR"
    let signeMD = "MDL"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .orange
        convertedLabel.text = "Enter the data bellow!"
        
    }



    @IBAction func addDot(_ sender: Any) {
        rateSpot.text = rateSpot.text?.appending(".")
    }
    
    

    @IBAction func tap(_ sender: Any) {
        amountSpot.text = amountSpot.text?.appending(".")
    }
    
    
    
    
    @IBAction func converting(_ sender: Any) {
        
        let rate = Double(rateSpot.text!)!
        let amount = Double(amountSpot.text!)!
        let result = amount / rate
        let result2 = amount * rate
        
        if switcher.selectedSegmentIndex == 0 {
            convertedLabel.text = signeUSA + " " + String(result)
        } else if switcher.selectedSegmentIndex == 1 {
            convertedLabel.text = signeMD + " " + String(result2)
        }
        
    }
    
}

