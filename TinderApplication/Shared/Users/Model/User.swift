//
//  User.swift
//  TinderApplication
//
//  Created by Thành Trung on 11/9/24.
//

import Foundation

struct User: Identifiable, Hashable {
    let id: String
    let fullName: String
    let age: Int
    let profileImageUrls: [String]
}
