//
//  ViewController.swift
//  TicketTracker
//
//  Created by Silvia Istudor on 2019-11-24.
//  Copyright © 2019 Silvia Istudor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var number1Field: UITextField!
     @IBOutlet weak var number2Field: UITextField!
    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func calculateTapped(_ sender: Any) {
        guard let number1Text = number1Field.text,
            let number1 = Int(number1Text) else {
                print("number1 input or not an integer")
                return
        }
        
        guard let number2Text = number2Field.text,
            let number2 = Int(number2Text) else {
                print("number2 input or not an integer")
                return
        }
        
        // calculate(inputInteger: inputInteger)
        // calculateReceipes()
        
        //calculateArithmentic(input: inputTextField.text!)
        
        calculateArithmenticUsingSwitch(input: inputTextField.text!, number1: number1, number2: number2)
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
    
    func calculateArithmentic(input: String) {
        var result = 0
        let number1 = 100
        let number2 = 10
        
        if input == "+" {
            result = number1 + number2
        }
        else if input == "-" {
            result = number1 - number2
        }
        else if input == "*" {
            result = number1 * number2
        }
        else if input == "/" {
            result = number1 / number2
        }
        else {
            print("input is not correct")
        }
        
        resultLabel.text = "\(result)"
    }
    
    func calculateArithmenticUsingSwitch(input: String, number1: Int, number2: Int) {
        var result = 0
        
        switch input {
        case "+":
            result = number1 + number2
        case "-":
            result = number1 - number2
        case "*":
            result = number1 * number2
        case "/":
            result = number1 / number2
        default:
            print("input is not correct")
        }

        resultLabel.text = "\(result)"
    }
    
    func calculateReceipes() {
        let receipts = ["food1",
                        "food2",
                        "food3",
                        "food4",
                        "food5"]
        let randomIndex = Int.random(in: 0...receipts.count - 1)
        let randomReceipt = receipts[randomIndex]
        
        resultLabel.text = "\(randomReceipt)"
    }
}

