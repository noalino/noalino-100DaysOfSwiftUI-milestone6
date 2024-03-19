//
//  ContentView.swift
//  RollingDice
//
//  Created by Noalino on 18/03/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var number = Int.random(in: 1...6)
    @State private var numbers = [Int]()

    var body: some View {
        VStack {
            List($numbers, id: \.self) { $num in
                Image(systemName: "\(num).circle")
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .alignmentGuide(.listRowSeparatorLeading) { d in
                        d[.leading]
                    }
            }
            .listStyle(.plain)

            Text("Number: \(number)")
                .font(.title)

            Button("ROLL", action: roll)
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .clipShape(.rect(cornerRadius: 10))

        }
        .padding(.top, 1)
    }

    func roll() {
        number = Int.random(in: 1...6)
        numbers.append(number)
    }
}

#Preview {
    ContentView()
}
