//
//  CardStackView.swift
//  TinderApplication
//
//  Created by Thành Trung on 11/9/24.
//

import SwiftUI

struct CardStackView: View {
    @StateObject var viewModel = CardsViewModel(service: CardService())
    var body: some View {
        ZStack {
            ForEach(viewModel.cardModels) { card in
                CardView(model: card)
            }
        }
    }
}

#Preview {
    CardStackView()
}
