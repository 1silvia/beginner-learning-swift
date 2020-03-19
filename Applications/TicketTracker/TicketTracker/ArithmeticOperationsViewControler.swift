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

//           guard let number1Text = number1Field.text,
//               let number1 = Int(number1Text) else {
//                   print("number1 input or not an integer")
//                   return
//           }
//
//           guard let number2Text = number2Field.text,
//               let number2 = Int(number2Text) else {
//                   print("number2 input or not an integer")
//                   return
//           }
   
    @IBAction func helloTapped(_ sender: Any) {
        saluteLabel.text = say(greeting: "Hello", name: nameTextField.text!)
    }
    
    @IBAction func saluteTapped(_ sender: Any) {
        saluteLabel.text = say(greeting: "Hi", name: nameTextField.text!)
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var saluteLabel: UILabel!
    
    public func say(greeting: String, name: String) -> String {
        
         return greeting + " " + name
    }
    
}
