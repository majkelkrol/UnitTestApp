//
//  Model_USD_UnitTest.swift
//  UnitTestApp_UnitTests
//
//  Created by Majkel on 23/12/2022.
//

import XCTest
@testable import UnitTestApp

final class Model_USD_UnitTest: XCTestCase {
    let model = Model()

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }
    
    func test_Model_validPriceDataWithView() {
        XCTAssertEqual("0.129340", model.price)
    }
    
    func test_Model_validNameDataWithView() {
        XCTAssertEqual("Dogecoin", model.name)
    }
    
    func test_Model_validSymbolDataWithView() {
        XCTAssertEqual("DOGE.V", model.symbol)
    }
    
    func test_Model_validDateDataWithView() {
        XCTAssertEqual("29.10.2022", model.date)
    }
    
    func test_Model_validCurrencyDataWithView() {
        XCTAssertEqual("USD", model.currency)
    }
    
    func test_Model_validOpenDataWithView() {
        XCTAssertEqual("0.084609", model.open)
    }
    
    func test_Model_validHighDataWithView() {
        XCTAssertEqual("0.151049", model.high)
    }
    
    func test_Model_validLowDataWithView() {
        XCTAssertEqual("0.082968", model.low)
    }
    
    func test_Model_validCloseDataWithView() {
        XCTAssertEqual("0.129290", model.close)
    }
    
    func test_Model_validChangeDataWithView() {
        XCTAssertEqual("+52.81%", model.change)
    }
}
