//
//  ContentView.swift
//  WeSplit
//
//  Created by G H Mahimaanvita on 24/06/21.
//

import SwiftUI

struct ContentView: View {
    @State var amount = ""
    @State var numberOfPeopleIndex = 2
    @State var tipPercentageIndex = 2
    var tipPercentageValues = [10, 20, 30, 40, 50, 0]
    var amountPerPerson: Double {
        get {
            let orderAmount = Double(amount) ?? 0
            let numberOfPeople = Double(numberOfPeopleIndex + 2)
            let tipPercentage = Double(tipPercentageValues[tipPercentageIndex])
            let tipAmount = (orderAmount * tipPercentage)/100
            let grandTotal = orderAmount + tipAmount
            let amountPerPerson = grandTotal / numberOfPeople
            return amountPerPerson
        }
    }
    var body: some View {
        NavigationView{
            Form {
                Section {
                    TextField("amount to split", text: $amount)
                        .keyboardType(.decimalPad)
                    Picker("number of people", selection: $numberOfPeopleIndex, content: {
                        ForEach(2..<100, content: {
                            num in Text("\(num) people")
                        })
                    })
                }
                Section(header: Text("How much tip would you like to leave")) {
                    Picker("Tip percentage", selection: $tipPercentageIndex, content: {
                        ForEach(0..<tipPercentageValues.count, content: {
                            tipIndex in Text("\(tipPercentageValues[tipIndex])%")
                        })
                    }).pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Amount per person"), content: {
                    Text("$ \(amountPerPerson, specifier: "%.2f")" )
                })
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
