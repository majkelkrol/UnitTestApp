//
//  JSON_UnitTest.swift
//  UnitTestApp_UnitTests
//
//  Created by Majkel on 27/12/2022.
//

import XCTest
@testable import UnitTestApp

final class JSON_UnitTest: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }
    
    func test_JSON_Dogecoin_shouldReturnValidData() {
        let json = """
        {
            "name": "Dogecoin",
            "symbol": "DOGE.V",
            "date": "29.10.2022",
            "change": "+52.81%",
            "currency": [
                {
                    "value": "USD",
                    "price": 0.129340,
                    "open": 0.084609,
                    "high": 0.151049,
                    "low": 0.082968,
                    "close": 0.129290
                },
                {
                    "value": "EUR",
                    "price": 0.128900,
                    "open": 0.084321,
                    "high": 0.150536,
                    "low": 0.082686,
                    "close": 0.128850
                }
            ]
        }
        """
        let jsonData = json.data(using: .utf8)!
        let dogeCoin = try! JSONDecoder().decode(DogeCoin.self, from: jsonData)
        
        XCTAssertEqual("Dogecoin", dogeCoin.name)
        XCTAssertEqual("DOGE.V", dogeCoin.symbol)
        XCTAssertEqual("29.10.2022", dogeCoin.date)
        XCTAssertEqual("+52.81%", dogeCoin.change)
    }
    
    func test_JSON_DogecoinUSD_shouldReturnValidData() {
        let json = """
        {
            "name": "Dogecoin",
            "symbol": "DOGE.V",
            "date": "29.10.2022",
            "change": "+52.81%",
            "currency": [
                {
                    "value": "USD",
                    "price": 0.129340,
                    "open": 0.084609,
                    "high": 0.151049,
                    "low": 0.082968,
                    "close": 0.129290
                },
                {
                    "value": "EUR",
                    "price": 0.128900,
                    "open": 0.084321,
                    "high": 0.150536,
                    "low": 0.082686,
                    "close": 0.128850
                }
            ]
        }
        """
        let jsonData = json.data(using: .utf8)!
        let dogeCoin = try! JSONDecoder().decode(DogeCoin.self, from: jsonData)
        
        XCTAssertEqual("USD", dogeCoin.currency[0].value)
        XCTAssertEqual(0.129340, dogeCoin.currency[0].price)
        XCTAssertEqual(0.084609, dogeCoin.currency[0].open)
        XCTAssertEqual(0.151049, dogeCoin.currency[0].high)
        XCTAssertEqual(0.082968, dogeCoin.currency[0].low)
        XCTAssertEqual(0.129290, dogeCoin.currency[0].close)
    }
    
    func test_JSON_DogecoinEUR_shouldReturnValidData() {
        let json = """
        {
            "name": "Dogecoin",
            "symbol": "DOGE.V",
            "date": "29.10.2022",
            "change": "+52.81%",
            "currency": [
                {
                    "value": "USD",
                    "price": 0.129340,
                    "open": 0.084609,
                    "high": 0.151049,
                    "low": 0.082968,
                    "close": 0.129290
                },
                {
                    "value": "EUR",
                    "price": 0.128900,
                    "open": 0.084321,
                    "high": 0.150536,
                    "low": 0.082686,
                    "close": 0.128850
                }
            ]
        }
        """
        let jsonData = json.data(using: .utf8)!
        let dogeCoin = try! JSONDecoder().decode(DogeCoin.self, from: jsonData)
        
        XCTAssertEqual("EUR", dogeCoin.currency[1].value)
        XCTAssertEqual(0.128900, dogeCoin.currency[1].price)
        XCTAssertEqual(0.084321, dogeCoin.currency[1].open)
        XCTAssertEqual(0.150536, dogeCoin.currency[1].high)
        XCTAssertEqual(0.082686, dogeCoin.currency[1].low)
        XCTAssertEqual(0.128850, dogeCoin.currency[1].close)
    }

}
