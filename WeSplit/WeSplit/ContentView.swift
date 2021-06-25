//
//  ContentView.swift
//  WeSplit
//
//  Created by G H Mahimaanvita on 24/06/21.
//

import SwiftUI

struct ContentView: View {
    @State var amount = ""
    @State var numberOfPeople = ""
    @State var tipPercentageIndex = 2
    var tipPercentageValues = [10, 20, 30, 40, 50, 0]
    var totalAmountToPay: Double {
        get {
            let orderAmount = Double(amount) ?? 0
            
            let tipPercentage = Double(tipPercentageValues[tipPercentageIndex])
            let tipAmount = (orderAmount * tipPercentage)/100
            let grandTotal = orderAmount + tipAmount
            return grandTotal
        }
    }
    var amountPerPerson: Double {
        get {
            let numberOfPeople = Int(numberOfPeople) ?? 1
            let amountPerPerson = totalAmountToPay / Double(numberOfPeople)
            return amountPerPerson
        }
    }
    var body: some View {
        NavigationView{
            Form {
                Section {
                    TextField("amount to split", text: $amount)
                        .keyboardType(.decimalPad)
                    TextField("number of people", text: $numberOfPeople)
                }
                Section(header: Text("How much tip would you like to leave")) {
                    Picker("Tip percentage", selection: $tipPercentageIndex, content: {
                        ForEach(0..<tipPercentageValues.count, content: {
                            tipIndex in Text("\(tipPercentageValues[tipIndex])%")
                        })
                    }).pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("Total amount to pay"), content: {
                    Text("$ \(totalAmountToPay, specifier: "%.2f")")
                })
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
