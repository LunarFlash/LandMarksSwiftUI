//
//  ContentView.swift
//  Landmarks
//
//  Created by Yi Wang on 2/12/22.
// https://developer.apple.com/tutorials/swiftui/creating-and-combining-views

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
