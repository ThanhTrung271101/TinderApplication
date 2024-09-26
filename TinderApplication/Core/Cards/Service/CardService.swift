//
//  CardService.swift
//  TinderApplication
//
//  Created by Thành Trung on 11/9/24.
//

import Foundation

struct CardService {

    func fetchCardModels() async throws -> [CardModel] {
        let users = MockData.users

        return users.map({ CardModel(user: $0) })
    }
}
