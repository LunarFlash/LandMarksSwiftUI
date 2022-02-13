//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Yi Wang on 2/12/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
