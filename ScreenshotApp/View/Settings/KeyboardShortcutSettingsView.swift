//
//  KeyboardShortcutSettingsView.swift
//  ScreenshotApp
//
//  Created by christian on 6/6/24.
//

import SwiftUI
import KeyboardShortcuts

struct KeyboardShortcutSettingsView: View {
    var body: some View {
        Form {
            KeyboardShortcuts.Recorder("Capture screen", name: .screenCapture)
            KeyboardShortcuts.Recorder("Capture window", name: .windowCapture)
            KeyboardShortcuts.Recorder("Capture area", name: .areaCapture)
        }
        .padding()
    }
}

#Preview {
    KeyboardShortcutSettingsView()
}
