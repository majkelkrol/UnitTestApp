//
//  ContentView.swift
//  UnitTestApp
//
//  Created by Majkel on 22/12/2022.
//

import SwiftUI

struct DogecoinView: View {
    @StateObject var model = Model()
    @State private var switchCurrency = false
    
    var body: some View {
        ZStack {
            VStack {
                Image("DogeCoinLogo")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10.0)
                    .padding()
                
                VStack {
                    Text(switchCurrency ? "\(model.changePrice()) EUR" : "\(model.price) USD")
                        .font(.title)
                        .foregroundColor(Color.dogeColor)
                    Toggle(isOn: $switchCurrency) {
                        Text("Switch currency")
                            .font(.title3)
                    }
                }
                .padding()
                
                List {
                    HStack {
                        Text("Name")
                        Spacer()
                        Text(model.name)
                    }
                    HStack {
                        Text("Symbol")
                        Spacer()
                        Text(model.symbol)
                    }
                    HStack {
                        Text("Date")
                        Spacer()
                        Text(model.date)
                    }
                    HStack {
                        Text("Currency")
                        Spacer()
                        Text(switchCurrency ? "\(model.changeCurrency())" : "\(model.currency)")
                    }
                    HStack {
                        Text("Open")
                        Spacer()
                        Text(switchCurrency ? "\(model.changeOpen())" : "\(model.open)")
                    }
                    HStack {
                        Text("High")
                        Spacer()
                        Text(switchCurrency ? "\(model.changeHigh())" : "\(model.high)")
                    }
                    HStack {
                        Text("Low")
                        Spacer()
                        Text(switchCurrency ? "\(model.changeLow())" : "\(model.low)")
                    }
                    HStack {
                        Text("Close")
                        Spacer()
                        Text(switchCurrency ? "\(model.changeClose())" : "\(model.close)")
                    }
                    HStack {
                        Text("Change")
                        Spacer()
                        Text("\(model.change)")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DogecoinView()
    }
}

extension Color {
    static let dogeColor: Color = Color.yellow.opacity(0.8)
}

