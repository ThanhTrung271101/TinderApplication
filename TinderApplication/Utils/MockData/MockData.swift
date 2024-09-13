//
//  MockData.swift
//  TinderApplication
//
//  Created by Thành Trung on 12/9/24.
//

import Foundation

struct MockData {
    static let users: [User] = [
        .init(
            id: NSUUID().uuidString,
            fullName: "Bruce Wayne",
            age: 30,
            profileImageUrls: [
                "lisa",
                "nam",
                "michel",
                "max"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullName: "David Beckham",
            age: 30,
            profileImageUrls: [
                "david-beckham-1",
                "david-beckham-2",
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullName: "Conor Mcgregor",
            age: 30,
            profileImageUrls: [
                "conor-mcgregor-1",
                "conor-mcgregor-2",
            ]
        ),
    ]
}
