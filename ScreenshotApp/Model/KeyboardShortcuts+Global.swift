//
//  KeyboardShortcuts+Global.swift
//  ScreenshotApp
//
//  Created by christian on 6/6/24.
//

import Foundation
import KeyboardShortcuts

extension KeyboardShortcuts.Name {
    static let screenCapture = Self("screenshotCapture", default: .init(.three, modifiers: [.option, .command]))
    static let windowCapture = Self("windowCapture", default: .init(.four, modifiers: [.option, .command]))
    static let areaCapture = Self("areaCapture", default: .init(.five, modifiers: [.option, .command]))
}
