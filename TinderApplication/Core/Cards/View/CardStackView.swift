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
        NavigationStack {
            VStack(spacing: 16) {
                ZStack {
                    ForEach(viewModel.cardModels) { card in
                        CardView(viewModel: viewModel, model: card)
                    }
                }
                
                if !viewModel.cardModels.isEmpty {
                    SwipeActionButtonView(viewModel: viewModel)

                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image("tinder-logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120)
                }
            }

        }
    }
}

#Preview {
    CardStackView()
}
