//
//  MatchManager.swift
//  TinderApplication
//
//  Created by Thành Trung on 17/9/24.
//

import Foundation

@MainActor
class MatchManager: ObservableObject {
    @Published var matchUser: User?
    func checkForMatch(withUser user: User) {
        let didMatch = Bool.random()

        if didMatch {
            matchUser = user
        }
    }
}
