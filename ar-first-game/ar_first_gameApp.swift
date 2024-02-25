//
//  ar_first_gameApp.swift
//  ar-first-game
//
//  Created by ishihaya on 2024/02/24.
//

import SwiftUI

@main
struct ARFirstGameApp: App {
    @State private var currentStyle: ImmersionStyle = .full

    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "myImmersiveSpace") {
            ContentView()
        }.immersionStyle(selection: $currentStyle, in: .full)
    }
}
