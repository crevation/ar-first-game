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
    @State private var rotation = Angle.zero
    @State private var count = 0
    var body: some View {
        Text("count:"+String(count))
        
        Model3D(named: "Scene", bundle: realityKitContentBundle)        { model in
            model.rotation3DEffect(rotation, axis: .x).onTapGesture {
                                withAnimation(.bouncy) {
                                    count+=1
                                    print("test animation")
                                    rotation.degrees+=randomRotation()
                                }
            }
//            model in model.model?.rotation3DEffect(
//                .degrees(45),
//                axis: (x: 0.0, y: 1.0, z: 0.0))
//            .border(Color.gray).onTapGesture{
//                withAnimation(.bouncy) {
//                    print("test animation")
//                    rotation.degrees+=randomRotation()
//                }
//            }
//
        } placeholder: {
            ImmersiveSpaceView()
        }
        
//                .padding(.bottom, 50)
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

func randomRotation() -> Double {
    return Double.random(in: 360...720)
}
