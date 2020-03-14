//
//  ViewController.swift
//  TicketTracker
//
//  Created by Silvia Istudor on 2019-11-24.
//  Copyright © 2019 Silvia Istudor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func calculateTapped(_ sender: Any) {
        guard let inputString = inputTextField.text,
            let inputInteger = Int(inputString) else {
                print("null input or not an integer")
                return
        }
        
        calculate(inputInteger: inputInteger)
    }
    
    func calculate(inputInteger: Int) {
        var result = 0
        if inputInteger < 10 {
           result = inputInteger * 2
        } else {
            result = inputInteger * 5
        }
        
        resultLabel.text = "\(result)"
    }
}

