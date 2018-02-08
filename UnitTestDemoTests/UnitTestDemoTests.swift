//
//  UnitTestDemoTests.swift
//  UnitTestDemoTests
//
//  Created by Zhou Hao on 30/1/18.
//  Copyright © 2018 Zhou Hao. All rights reserved.
//

import XCTest
@testable import UnitTestDemo

class UnitTestDemoTests: XCTestCase {
  
  var math = Math()
    
  override func setUp() {
      super.setUp()
      // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
      // Put teardown code here. This method is called after the invocation of each test method in the class.
      super.tearDown()
  }
  
  func testAddAndMultiply() {
    let num1 = 4
    let num2 = 2
    let num3 = 6
    let expected = 36
    
    let result = math.addAndMultiply(num1, num2, num3)
    XCTAssert(result == expected)
  }
  
  
}
