//
//  ContentView.swift
//  WeSplit
//
//  Created by G H Mahimaanvita on 24/06/21.
//

import SwiftUI

struct ContentView: View {
    @State var amount = ""
    @State var numberOfPeople = 2
    @State var tipPercentage = 2
    var tipPercentageValues = [10, 20, 30, 40, 50]
    var body: some View {
        NavigationView{
            Form {
                Section {
                    TextField("amount to split", text: $amount)
                        .keyboardType(.decimalPad)
                    Picker("number of people", selection: $numberOfPeople, content: {
                        ForEach(2..<100, content: {
                            num in Text("\(num) people")
                        })
                    })
                }
            }
            .navigationBarTitle("We Split")
        }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
