//
//  TinderApplicationApp.swift
//  TinderApplication
//
//  Created by Thành Trung on 6/9/24.
//

import SwiftUI

@main
struct TinderApplicationApp: App {
    @StateObject var matchManager = MatchManager()
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(matchManager)
        }
    }
}
