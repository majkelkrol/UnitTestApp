//
//  Model.swift
//  UnitTestApp
//
//  Created by Majkel on 22/12/2022.
//

import Foundation

class Model: ObservableObject {
    let price = "0.129340"
    let name = "Dogecoin"
    let symbol = "DOGE.V"
    let date = "29.10.2022"
    let currency = "USD"
    let open = "0.084609"
    let high = "0.151049"
    let low = "0.082968"
    let close = "0.129290"
    let change = "+52.81%"
}

extension Model {
    func changePrice() -> String {
        return "0.128900"
    }
    
    func changeCurrency() -> String {
        return "EUR"
    }
    
    func changeOpen() -> String {
        return "0.084321"
    }
    
    func changeHigh() -> String {
        return "0.150536"
    }
    
    func changeLow() -> String {
        return "0.082686"
    }
    
    func changeClose() -> String {
        return "0.128850"
    }
}
