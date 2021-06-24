//
//  ContentView.swift
//  WeSplit
//
//  Created by G H Mahimaanvita on 24/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Form {
            Section {
                Text("Hello, there!")
                Text("Hello, there!")
            }
            Section {
                Text("Hello, there!")
                Text("Hello, there!")
            }
        } //Form is a struct confirming to View protocol. of type: Form<content> where content is something that conforms to View.
        //Text is a struct conforming to equtable.
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
