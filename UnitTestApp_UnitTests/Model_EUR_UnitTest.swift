//
//  Model_EUR_UnitTest.swift
//  UnitTestApp_UnitTests
//
//  Created by Majkel on 23/12/2022.
//

import XCTest
@testable import UnitTestApp

final class Model_EUR_UnitTest: XCTestCase {
    let model = Model()

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }
    
    func test_Model_validPriceDataWithView() {
        XCTAssertEqual(0.128900, model.changePrice())
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
        XCTAssertEqual("EUR", model.changeCurrency())
    }
    
    func test_Model_validOpenDataWithView() {
        XCTAssertEqual(0.084321, model.changeOpen())
    }
    
    func test_Model_validHighDataWithView() {
        XCTAssertEqual(0.150536, model.changeHigh())
    }
    
    func test_Model_validLowDataWithView() {
        XCTAssertEqual(0.082686, model.changeLow())
    }
    
    func test_Model_validCloseDataWithView() {
        XCTAssertEqual(0.128850, model.changeClose())
    }
    
    func test_Model_validChangeDataWithView() {
        XCTAssertEqual("+52.81%", model.change)
    }
}
