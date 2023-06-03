//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by hosam abufasha on 27/05/2023.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }.commands {
            LandmarkCommands()
        }
#if os(macOS)
        Settings {
            LandmarkSettings()
        }
#endif
    }
}
