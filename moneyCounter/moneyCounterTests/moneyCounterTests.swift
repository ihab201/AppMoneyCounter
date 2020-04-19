//
//  moneyCounterTests.swift
//  moneyCounterTests
//
//  Created by bennoui ihab on 4/12/20.
//  Copyright © 2020 bennoui ihab. All rights reserved.
//

import XCTest

class moneyCounterTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    func testCounter () {
        XCTAssert(Wage.getHours(ForWage: 25, andPrice: 100) == 4)
        
    }
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
