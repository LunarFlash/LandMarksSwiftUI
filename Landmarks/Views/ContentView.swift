//
//  ContentView.swift
//  Landmarks
//
//  Created by Yi Wang on 2/12/22.
// https://developer.apple.com/tutorials/swiftui/creating-and-combining-views

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
