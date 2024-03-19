//
//  ContentView.swift
//  RollingDice
//
//  Created by Noalino on 18/03/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var number = Int.random(in: 1...6)

    var body: some View {
        VStack {
            Text("Number: \(number)")
            Button("Roll dice", action: roll)
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .clipShape(.rect(cornerRadius: 10))
        }
        .padding()
    }

    func roll() {
        number = Int.random(in: 1...6)
    }
}

#Preview {
    ContentView()
}
