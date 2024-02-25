//
//  ARGame01App.swift
//  ar-first-game
//
//  Created by ishihaya on 2024/02/24.
//

import SwiftUI
//import RealityKit
//import RealityKitContent

@main
struct ARGame01App: App {
    @State private var currentStyle: ImmersionStyle = .full

    var body: some Scene {
        // WindowGroup {
        //     ContentView()
        // }
        
        WindowGroup {
            // Model3D(named: "Scene", bundle: realityKitContentBundle)
            //     .padding(.bottom, 50)
           ContentView()
        }.windowStyle(.volumetric)
//            .defaultSize(width: 0.6, height: 0.6, depth: 0.6, in: .meters)

        ImmersiveSpace(id: "myImmersiveSpace") {
            ImmersiveSpaceView()
        }.immersionStyle(selection: $currentStyle, in: .full)
    }
}
