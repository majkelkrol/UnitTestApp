//
//  Model.swift
//  UnitTestApp
//
//  Created by Majkel on 22/12/2022.
//

import Foundation

class Model: ObservableObject {
    let price = 0.12934
    let name = "Dogecoin"
    let symbol = "DOGE.V"
    let date = "29.10.2022"
    let currency = "USD"
    let open = 0.0846089
    let high = 0.1510494
    let low = 0.0829678
    let close = 0.1292897
    let change = "+52.81%"
}

extension Model {
    func changePrice() -> Double {
        return price * 0.9966
    }
    
    func changeCurrency() -> String {
        return "EUR"
    }
    
    func changeOpen() -> Double {
        return open * 0.9966
    }
    
    func changeHigh() -> Double {
        return high * 0.9966
    }
    
    func changeLow() -> Double {
        return low * 0.9966
    }
    
    func changeClose() -> Double {
        return close * 0.9966
    }
}
