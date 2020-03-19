//
//  ViewControllerTests.swift
//  TicketTrackerTests
//
//  Created by Silvia Istudor on 2020-03-19.
//  Copyright © 2020 Silvia Istudor. All rights reserved.
//

import XCTest
import TicketTracker

class ViewControllerTests: XCTestCase {
    func testAddition() {
        let controller = ViewController()
        let result = controller.calculateArithmenticUsingSwitch(input: "+", number1: 3, number2: 10)
        XCTAssertEqual(result, "13")
    }
    
    func testSubtraction() {
        let controller = ViewController()
        let result = controller.calculateArithmenticUsingSwitch(input: "-", number1: 3, number2: 10)
        XCTAssertEqual(result, "-7")
    }
    
    func testIncorrectDivision() {
        let controller = ViewController()
        let result = controller.calculateArithmenticUsingSwitch(input: "/", number1: 3, number2: 0)
        XCTAssertNil(result)
    }
    
    func testMultiplication() {
        let controller = ViewController()
        let result = controller.calculateArithmenticUsingSwitch(input: "*", number1: 3, number2: 10)
        XCTAssertEqual(result, "30")
    }
    
    func testDivision() {
        let controller = ViewController()
        let result = controller.calculateArithmenticUsingSwitch(input: "/", number1: 3, number2: 10)
        XCTAssertEqual(result, "0")
    }
    
    func testIncorrectOperation() {
        let controller = ViewController()
        
        let result = controller.calculateArithmenticUsingSwitch(input: "incorrect1", number1: 3, number2: 10)
        XCTAssertNil(result)
    }
}
