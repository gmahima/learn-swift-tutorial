//
//  ContentView.swift
//  WeSplit
//
//  Created by G H Mahimaanvita on 24/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Form {
                Section {
                    Text("Hello, there!")  
                    Text("Hello, there!")
                }
                Section {
                    Text("Hello, there!")
                    Text("Hello, there!")
                }
            }.navigationBarTitle(Text("Swift UI "))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
