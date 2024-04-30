//
//  ContentView.swift
//  StockSwift
//
//  Created by Behnam Ebrahimi on 30/04/2024.
//
import SwiftUI
import Foundation

struct ContentView: View {
    @State private var selectedStock: String = ""
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
            Button(action: {
                print("Button tapped!")
            }) {
                Text("About me")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity) // Set the frame to full screen
    }
}

#Preview {
    ContentView()
}
