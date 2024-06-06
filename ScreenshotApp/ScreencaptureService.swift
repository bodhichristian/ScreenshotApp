//
//  ScreencaptureService.swift
//  ScreenshotApp
//
//  Created by christian on 6/6/24.
//

import Foundation
import SwiftUI

@Observable
class ScreencaptureService {
    
    enum ScreenshotType {
        case screen, window, area
        
        var processArguments: [String] {
            switch self {
            case .screen:
                ["-c"]
            case .window:
                ["-cw"]
            case .area:
                ["-cs"]
            }
        }
    }
    var images: [NSImage]
    
    init() {
        self.images = []
    }
    
    func capture(_ type: ScreenshotType) {
        let task = Process()
            task.executableURL = URL(fileURLWithPath: "/usr/sbin/screencapture")
        task.arguments = type.processArguments
        
        do {
            try task.run()
            task.waitUntilExit()
        } catch {
            print("Could not capture screenshot." + error.localizedDescription)
        }
        
        getImageFromPasteboard()
        
    }
    
    private func getImageFromPasteboard() {
        guard NSPasteboard.general.canReadItem(withDataConformingToTypes: NSImage.imageTypes) else { return }
        
        guard let image = NSImage(pasteboard: NSPasteboard.general) else { return }
        
        self.images.append(image)
    }
}
