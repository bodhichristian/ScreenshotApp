//
//  ContentView.swift
//  ScreenshotApp
//
//  Created by christian on 6/6/24.
//

import SwiftUI

struct ContentView: View {
    let service: ScreenCaptureService
    
    var body: some View {
        VStack {
            if !service.images.isEmpty {
                ScrollView(.horizontal){
                    HStack {
                        ForEach(service.images.reversed(), id: \.self) { image in
                            Image(nsImage: image)
                                .resizable()
                                .scaledToFit()
                                .onDrag({ NSItemProvider(object: image) })
                        }
                    }
                }
            }
            Spacer()
            HStack {
                Button("Capture Screen") {
                    service.capture(.screen)
                }
                
                Button("Capture Window") {
                    service.capture(.window)
                }
                
                Button("Capture Area") {
                    service.capture(.area)
                }
            }
        }
        .padding()
    }
    

}

#Preview {
    ContentView(service: ScreenCaptureService())
}
