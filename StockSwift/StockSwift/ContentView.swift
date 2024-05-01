//
//  ContentView.swift
//  StockSwift
//
//  Created by Behnam Ebrahimi on 30/04/2024.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @State private var selectedStock: String = "AAPL"
    let stockNames = ["AAPL", "GOOGL", "MSFT", "AMZN"]

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Spacer() // Add a spacer to push the button to the bottom
            Picker("Select Stock", selection: $selectedStock) {
                ForEach(stockNames, id: \.self) { stockName in
                    Text(stockName)
                }
            }
            .pickerStyle(.menu)
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
            HStack {
                Button(action: {
                    print("Button tapped!")
                }) {
                    Text("Get Stock Data.")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                Spacer()
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity) // Set the frame to full screen
    }
}

/// The main content view of the StockSwift app.
///
/// This view displays a globe icon, a text label, a picker to select a stock, and a button to get stock data.
/// The selected stock is stored in the `selectedStock` state variable.
/// The available stock names are defined in the `stockNames` array.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
