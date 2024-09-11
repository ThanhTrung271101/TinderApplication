//
//  CardStackView.swift
//  TinderApplication
//
//  Created by Thành Trung on 11/9/24.
//

import SwiftUI

struct CardStackView: View {
    var body: some View {
        ZStack {
            ForEach(0 ..< 20) { _ in
                CardView()
            }
        }
    }
}

#Preview {
    CardStackView()
}
