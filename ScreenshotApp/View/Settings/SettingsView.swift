//
//  SettingsView.swift
//  ScreenshotApp
//
//  Created by christian on 6/6/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        TabView {
            KeyboardShortcutSettingsView()
                .tabItem { Label("Keyboard Shortcuts", systemImage: "keyboard") }
            
//            Text("Second tab")
//                .tabItem { Label("Second tab", systemImage: "gear") }
//            
            
        }
    }
}

#Preview {
    SettingsView()
}
