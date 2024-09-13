//
//  SwipeActionButtonView.swift
//  TinderApplication
//
//  Created by Thành Trung on 13/9/24.
//

import SwiftUI

struct SwipeActionButtonView: View {
    @ObservedObject var viewModel: CardsViewModel
    
    var body: some View {
        HStack(spacing: 32) {
            Button {
                viewModel.buttonSwipeAction = .reject
            } label: {
                Image(systemName: "xmark")
                    .fontWeight(.heavy)
                    .foregroundColor(Color(.red))
                    .background(
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(Color(.white))
                            .shadow(radius: 6)
                    )
            }
            .frame(width: 48, height: 48)
            
            Button {
                viewModel.buttonSwipeAction = .like
            } label: {
                Image(systemName: "heart.fill")
                    .fontWeight(.heavy)
                    .foregroundColor(Color(.green))
                    .background(
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(Color(.white))
                            .shadow(radius: 6)
                    )
            }
            .frame(width: 48, height: 48)
        }
    }
}

#Preview {
    SwipeActionButtonView(viewModel: CardsViewModel(service: CardService()))
}
