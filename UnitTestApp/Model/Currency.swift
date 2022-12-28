//
//  Currency.swift
//  UnitTestApp
//
//  Created by Majkel on 27/12/2022.
//

import Foundation

struct Currency: Codable {
    let value: String
    let price: Double
    let open: Double
    let high: Double
    let low: Double
    let close: Double
    
    enum CodingKeys: String, CodingKey {
        case value, price, open
        case high, low, close
    }
}

