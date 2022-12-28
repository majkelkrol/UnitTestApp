//
//  JSON_Bundle_UnitTest.swift
//  UnitTestApp_UnitTests
//
//  Created by Majkel on 28/12/2022.
//

import XCTest
@testable import UnitTestApp

final class JSON_Bundle_UnitTest: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }
    
    func test_JSON_Bundle_shouldReturnValidData() {
        guard let path = Bundle.main.path(forResource: "dogecoin", ofType: "json") else {
            return
        }
        
        let url = URL(fileURLWithPath: path)
        
        var dogeCoin: DogeCoin?
        do {
            let jsonData = try Data(contentsOf: url)
            dogeCoin = try JSONDecoder().decode(DogeCoin.self, from: jsonData)
            
        } catch {
            print("Error")
        }
        XCTAssertEqual("Dogecoin", dogeCoin?.name)
        XCTAssertEqual("DOGE.V", dogeCoin?.symbol)
        XCTAssertEqual("29.10.2022", dogeCoin?.date)
        XCTAssertEqual("+52.81%", dogeCoin?.change)
    }
    
    func test_JSON_USD_shouldReturnValidData() {
        guard let path = Bundle.main.path(forResource: "dogecoin", ofType: "json") else {
            return
        }
        
        let url = URL(fileURLWithPath: path)
        
        var dogeCoin: DogeCoin?
        do {
            let jsonData = try Data(contentsOf: url)
            dogeCoin = try JSONDecoder().decode(DogeCoin.self, from: jsonData)
            
        } catch {
            print("Error")
        }
        XCTAssertEqual("USD", dogeCoin?.currency[0].value)
        XCTAssertEqual(0.129340, dogeCoin?.currency[0].price)
        XCTAssertEqual(0.084609, dogeCoin?.currency[0].open)
        XCTAssertEqual(0.151049, dogeCoin?.currency[0].high)
        XCTAssertEqual(0.082968, dogeCoin?.currency[0].low)
        XCTAssertEqual(0.129290, dogeCoin?.currency[0].close)
    }
    
    func test_JSON_EUR_shouldReturnValidData() {
        guard let path = Bundle.main.path(forResource: "dogecoin", ofType: "json") else {
            return
        }
        
        let url = URL(fileURLWithPath: path)
        
        var dogeCoin: DogeCoin?
        do {
            let jsonData = try Data(contentsOf: url)
            dogeCoin = try JSONDecoder().decode(DogeCoin.self, from: jsonData)
            
        } catch {
            print("Error")
        }
        XCTAssertEqual("EUR", dogeCoin?.currency[1].value)
        XCTAssertEqual(0.128900, dogeCoin?.currency[1].price)
        XCTAssertEqual(0.084321, dogeCoin?.currency[1].open)
        XCTAssertEqual(0.150536, dogeCoin?.currency[1].high)
        XCTAssertEqual(0.082686, dogeCoin?.currency[1].low)
        XCTAssertEqual(0.128850, dogeCoin?.currency[1].close)
    }
}
