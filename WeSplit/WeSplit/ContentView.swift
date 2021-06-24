//
//  ContentView.swift
//  WeSplit
//
//  Created by G H Mahimaanvita on 24/06/21.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount :Int = 0
    @State private var name: String = ""
    var body: some View {
        Form {
            TextField("enter your name", text: $name)
            Text("Your name is \(name) isn't it? Hmph! I am so clever!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
