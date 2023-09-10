//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Bekir Berke Yılmaz on 10.09.2023.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
