//
//  Dogecoin.swift
//  UnitTestApp
//
//  Created by Majkel on 27/12/2022.
//

import Foundation

struct DogeCoin: Codable {
    let name: String
    let symbol: String
    let date: String
    let change: String
    let currency: [Currency]
}
