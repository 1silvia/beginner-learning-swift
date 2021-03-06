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
    
    func testNumberLimit8_whenTapping9Digits_shouldStopAdding() {
        let controller = ArithmeticOperationsViewControler()
        
        for character in "123456789" {
            controller.addDigit(digit: "\(character)")
        }
        
        XCTAssertEqual("12345678", controller.textFieldValue)
    }
    
    func testNumberLimit8_whenAdding9DigitsAtOnce_shouldOnlyAdd8() {
        let controller = ArithmeticOperationsViewControler()
        
        controller.addDigit(digit: "123456789")
        
        XCTAssertEqual("", controller.textFieldValue)
    }
    
    func testBackspace_whenTappingBackspace_shouldDeleteLastDigit() {
        let controller = ArithmeticOperationsViewControler()
        controller.addDigit(digit: "8")
        controller.addDigit(digit: "7")
        controller.deleteLast()
        
        XCTAssertEqual("8", controller.textFieldValue)
    }
    
    func testCalculateSquare_whenTappingSquareButton_shouldReturnSquareOfNumber() {
        let controller = ArithmeticOperationsViewControler()
        controller.addDigit(digit: "5")
        controller.calculateSquare()
        
        XCTAssertEqual("25", controller.textFieldValue)
    }
    
    func testAdditionOperation_whenTappingPlus_shouldSaveNumber1InTextField() {
        let controller = ArithmeticOperationsViewControler()
        controller.addDigit(digit: "5")
        controller.performOperation(operationSign: "+")
        
        XCTAssertEqual(5, controller.number1)
        XCTAssertEqual("+", controller.operation)
    }
    
    func testAdditionOperation_whenTappingEqualButton_shouldSaveNumber2InTextField() {
        let controller = ArithmeticOperationsViewControler()
        controller.addDigit(digit: "5")
        controller.performOperation(operationSign: "+")
        controller.addDigit(digit: "7")
        controller.addEqual()
        
        XCTAssertEqual(7, controller.number2)
    }
    
    func testAdditionOperation_whenTappingAdditionButton_shouldReturnSumOfNumbers() {
        let controller = ArithmeticOperationsViewControler()
        controller.addDigit(digit: "5")
        controller.performOperation(operationSign: "+")
        controller.addDigit(digit: "7")
        controller.addEqual()
        
        XCTAssertEqual("12", controller.textFieldValue)
    }
    
    func testSubtractionOperation_whenTappingMinus_shouldSaveNumber1InTextField() {
        let controller = ArithmeticOperationsViewControler()
        controller.addDigit(digit: "8")
        controller.performOperation(operationSign: "-")
        
        XCTAssertEqual(8, controller.number1)
        XCTAssertEqual("-", controller.operation)
    }
    
    func testSubtractionOperation_whenTappingEqualButton_shouldSaveNumber2InTextField() {
        let controller = ArithmeticOperationsViewControler()
        controller.addDigit(digit: "8")
        controller.performOperation(operationSign: "-")
        controller.addDigit(digit: "7")
        controller.addEqual()

        XCTAssertEqual(7, controller.number2)
    }
    
    func testSubtractionOperation_whenTappingSubtractionButton_shouldReturnSubtractionOfNumbers() {
        let controller = ArithmeticOperationsViewControler()
        controller.addDigit(digit: "8")
        controller.performOperation(operationSign: "-")
        controller.addDigit(digit: "7")
        controller.addEqual()

        XCTAssertEqual("1", controller.textFieldValue)
    }
}
