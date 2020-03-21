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
    
    @IBAction func deleteLastDigit(_ sender: Any) {
        deleteLast()
    }
    
    public func addDigit(digit: String) {
        if textFieldValue.count + digit.count <= 8 {
            textFieldValue = textFieldValue + digit
        }
    }
    
    public func deleteLast() {
        textFieldValue = String(textFieldValue.dropLast())
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
    
    @IBAction func clearTapped(_ sender: Any) {
        textFieldValue = ""
    }
    
    @IBAction func numberZero(_ sender: Any) {
        addDigit(digit: "0")
    }
}
