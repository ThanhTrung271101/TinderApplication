//
//  CardView.swift
//  TinderApplication
//
//  Created by Thành Trung on 6/9/24.
//

import SwiftUI

struct CardView: View {
    @ObservedObject var viewModel: CardsViewModel
    @State private var xOffset: CGFloat = 0
    @State private var degrees: CGFloat = 0
    @State private var currentImageIndex = 0
    
    let model: CardModel
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top) {
                Image(user.profileImageUrls[currentImageIndex])
                    .resizable()
                    .scaledToFill()
                    .frame(width: SizeConstant.cardWidth, height: SizeConstant.cardHeight)
                    .overlay {
                        ImageSrollingOverlay(currentImageIndex: $currentImageIndex, currentIndex: imageCount)
                    }
                
                SwipeActionIndicatorView(xOffset: $xOffset)
                
                CardImageIndicatorView(currentImageIndex: currentImageIndex, imageCount: imageCount)
            }
            
            UserInfoView(user: user)
        }
        .frame(width: SizeConstant.cardWidth, height: SizeConstant.cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x: xOffset)
        .rotationEffect(.degrees(degrees))
        .animation(.snappy, value: xOffset)
        .gesture(
            DragGesture()
                .onChanged(onDragChanged)
                .onEnded(onDragEnded)
        )
    }
}

private extension CardView {
    var user: User {
        return model.user
    }
    
    var imageCount: Int {
        return user.profileImageUrls.count
    }
}

private extension CardView {
    func returnToCenter() {
        xOffset = 0
        degrees = 0
    }
    
    func swipeRight() {
        xOffset = 500
        degrees = 12
        viewModel.removeCard(model)
    }
    
    func swipeLeft() {
        xOffset = -500
        degrees = -12
        viewModel.removeCard(model)
    }
}

private extension CardView {
    func onDragChanged(_ value: _ChangedGesture<DragGesture>.Value) {
        xOffset = value.translation.width
        degrees = Double(value.translation.width / 25)
    }
    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value) {
        let width = value.translation.width
        
        if abs(width) <= abs(SizeConstant.screenCutoff) {
            returnToCenter()
            return
        }
        if width >= SizeConstant.screenCutoff {
            swipeRight()
        } else {
            swipeLeft()
        }
    }
}

#Preview {
    CardView(viewModel: CardsViewModel(service: CardService()), model: CardModel(user: MockData.users[0]))
}
