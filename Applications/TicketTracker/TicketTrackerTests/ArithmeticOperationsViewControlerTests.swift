//
//  ArithmeticOperationsViewControlerTests.swift
//  TicketTrackerTests
//
//  Created by Silvia Istudor on 2020-03-19.
//  Copyright © 2020 Silvia Istudor. All rights reserved.
//

import XCTest
import TicketTracker

class ArithmeticOperationsViewControlerTests: XCTestCase {

    func testGreeting() {
        let controller = ArithmeticOperationsViewControler()
        let result = controller.say(greeting: "nighty night", name: "John")
        
        XCTAssertEqual("nighty night John", result)
    }
    
    func testNumber7_whenTappingButton7_shouldTextAreaBe7() {
        let controller = ArithmeticOperationsViewControler()
        controller.addDigit(digit: "7")
        
        XCTAssertEqual("7", controller.textFieldValue)
    }
    
    func testNumber8_whenTappingButton8_shouldTextAreaBe8() {
        let controller = ArithmeticOperationsViewControler()
        controller.addDigit(digit: "8")
        
        XCTAssertEqual("8", controller.textFieldValue)
    }
    
    func testNumber87_whenTappingButton87_shouldTextAreaBe87() {
        let controller = ArithmeticOperationsViewControler()
        controller.addDigit(digit: "8")
        controller.addDigit(digit: "7")

        
        XCTAssertEqual("87", controller.textFieldValue)
    }
}
