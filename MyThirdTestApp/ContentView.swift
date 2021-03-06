//
//  ContentView.swift
//  MyThirdTestApp
//
//  Created by Vahtee Boo on 22.10.2021.
//

import SwiftUI

class User: ObservableObject {
    @Published var firstName = "Ivan"
    @Published var lastName = "Petrov"
}

struct ContentView: View {
    @ObservedObject var user = User()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            TextField("First name", text: $user.firstName)
            TextField("Second name", text: $user.lastName)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
