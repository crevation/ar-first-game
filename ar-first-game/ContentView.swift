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
    @Environment(\.openImmersiveSpace) private var openImmersiveSpace
    var body: some View {
                    Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)
        //     NavigationStack {
        // // VStack {
        //     Model3D(named: "Scene", bundle: realityKitContentBundle)
        //         .padding(.bottom, 50)

        //     // Button("Enter Immersive Space") {
        //     //     Task {
        //     //         await openImmersiveSpace(id: "myImmersiveSpace")
        //     //     }
        //     // }

        //         NavigationLink("Volume", destination: VolumeView()).navigationTitle("next")

        //     Text("Hello, world!")
        // // }
        // // .padding()
        //     }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
