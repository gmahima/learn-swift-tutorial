//
//  ContentView.swift
//  WeSplit
//
//  Created by G H Mahimaanvita on 24/06/21.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Ron", "Hermione"]
    @State private var pickedStudent = "Harry"
    var body: some View {

            Picker("play with", selection: $pickedStudent){
                ForEach(0..<students.count) {
                    Text(self.students[$0])
                }//closure
            }// a closure

        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
