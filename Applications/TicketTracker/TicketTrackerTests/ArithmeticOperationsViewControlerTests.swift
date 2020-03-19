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
}
