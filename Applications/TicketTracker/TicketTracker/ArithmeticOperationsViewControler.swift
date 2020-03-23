//
//  ArithmeticOperationsViewControler.swift
//  TicketTracker
//
//  Created by Silvia Istudor on 2020-03-15.
//  Copyright © 2020 Silvia Istudor. All rights reserved.
//

import Foundation
import UIKit

public class ArithmeticOperationsViewControler: UIViewController {
    
    @IBOutlet weak var numbersContainer: UIView!
    @IBOutlet weak var numberPanel: UILabel!
    
    public var number1: Int = 0
    public var number2: Int = 0
    
    public var textFieldValue: String = "" {
        didSet {
            numberPanel?.text = textFieldValue
        }
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
        swipeGestureRecognizer.direction = .left
        
        numbersContainer.addGestureRecognizer(swipeGestureRecognizer)
    }
    
    @objc func swipe(gestureRecognizer: UISwipeGestureRecognizer) {
        deleteLast()
    }
    
    @IBAction func returnSquare(_ sender: Any) {
        calculateSquare()
    }
    
    @IBAction func deleteLastDigit(_ sender: Any) {
        deleteLast()
    }
    
    @IBAction func additionOperation(_ sender: Any) {
        addOperationPlus()
    }
    
    @IBAction func equalOperation(_ sender: Any) {
        addEqual()
    }
    
    public func addDigit(digit: String) {
        if textFieldValue.count + digit.count <= 8 {
            textFieldValue = textFieldValue + digit
        }
    }
    
    public func addOperationPlus() {
        number1 = Int(textFieldValue)!
        clearTextFieldValue()
    }
    
    public func addEqual() {
        number2 = Int(textFieldValue)!
        let result = number1 + number2
        textFieldValue = "\(result)"
    }

    public func deleteLast() {
        textFieldValue = "\(textFieldValue.dropLast())"
    }
    
    public func calculateSquare() {
        guard let numberInt = Int(textFieldValue) else {
            print("did not find number in text field")
            return
        }
        
        let result = pow(Decimal(numberInt), 2)
        textFieldValue = "\(result)"
    }
    
    @IBAction func numberSeven(_ sender: Any) {
        addDigit(digit: "7")
    }
    
    @IBAction func numberEight(_ sender: Any) {
        addDigit(digit: "8")
    }
    
    @IBAction func numberNine(_ sender: Any) {
        addDigit(digit: "9")
    }
    
    @IBAction func nuberFour(_ sender: Any) {
        addDigit(digit: "4")
    }
    
    @IBAction func numberFive(_ sender: Any) {
        addDigit(digit: "5")
    }
    
    @IBAction func numberSix(_ sender: Any) {
        addDigit(digit: "6")
    }
    
    @IBAction func numberOne(_ sender: Any) {
        addDigit(digit: "1")
    }
    
    @IBAction func numberTwo(_ sender: Any) {
        addDigit(digit: "2")
    }
    
    @IBAction func numberThree(_ sender: Any) {
        addDigit(digit: "3")
    }
    
    fileprivate func clearTextFieldValue() {
        textFieldValue = ""
    }
    
    @IBAction func clearTapped(_ sender: Any) {
        clearTextFieldValue()
    }
    
    @IBAction func numberZero(_ sender: Any) {
        addDigit(digit: "0")
    }
}
