//
//  ContentView.swift
//  CitySights
//
//  Created by Kelvin on 6/13/24.
//

import SwiftUI

struct ContentView: View {
    @State var query: String = ""
    
    var body: some View {
        HStack {
            TextField("What're you looking for?", text: $query)
                .textFieldStyle(.roundedBorder)
            Button {
                // TODO: Implement query
            } label: {
                Text("Go")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
