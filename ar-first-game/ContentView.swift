//
//  ContentView.swift
//  ar-first-game
//
//  Created by ishihaya on 2024/02/24.
//

import RealityKit
import RealityKitContent
import SwiftUI

struct ContentView: View {
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    var body: some View {
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)

            Button("Enter Immersive Space") {
                Task {
                    await openImmersiveSpace(id: "myImmersiveSpace")
                }
            }

            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
