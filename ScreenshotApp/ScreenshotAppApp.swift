//
//  ScreenshotAppApp.swift
//  ScreenshotApp
//
//  Created by christian on 6/6/24.
//

import SwiftUI

@main
struct ScreenshotAppApp: App {
    @State private var service = ScreenCaptureService()
    
    var body: some Scene {
        WindowGroup {
            ContentView(service: service)
        }
        
        Settings {
            SettingsView() 
        }
    }
}
