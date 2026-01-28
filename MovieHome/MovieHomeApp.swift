//
//  MovieHomeApp.swift
//  MovieHome
//
//  Created by Sarith Ranathunge on 2026-01-24.
//

import SwiftUI
import SwiftData

@main
struct MovieHomeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Title.self)
    }
}
