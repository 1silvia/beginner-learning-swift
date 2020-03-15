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
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func plusTapped(_ sender: Any) {
        calculateOperation(input: "+")
    }
    
    @IBAction func minusTapped(_ sender: Any) {
        calculateOperation(input: "-")
    }
    
    @IBAction func multiplyTapped(_ sender: Any) {
        calculateOperation(input: "*")
    }
    
    @IBAction func divisionTapped(_ sender: Any) {
       calculateOperation(input: "/")
    }
    
    func calculateOperation(input: String) {
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
        
        calculateArithmenticUsingSwitch(input: input, number1: number1, number2: number2)
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
}
