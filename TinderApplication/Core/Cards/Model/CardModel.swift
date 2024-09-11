//
//  CardModel.swift
//  TinderApplication
//
//  Created by Thành Trung on 11/9/24.
//

import Foundation

struct CardModel {
    let user: User

}

extension CardModel: Identifiable {
    var id: String { return user.id}
}
