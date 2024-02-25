//
//  ImmersiveSpaceView.swift
//  ar-first-game
//
//  Created by ishihaya on 2024/02/24.
//

import RealityKit
import RealityKitContent
import SwiftUI

struct ImmersiveSpaceView: View {
    @Environment(\.dismissImmersiveSpace) private var dismissImmersiveSpace
    var body: some View {
        Text("Hello, Immersive Space!")
        Button("Exit Immersive Space") {
            Task {
                await dismissImmersiveSpace()
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ImmersiveSpaceView()
}
