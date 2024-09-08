//
//  CardView.swift
//  TinderApplication
//
//  Created by Thành Trung on 6/9/24.
//

import SwiftUI

struct CardView: View {
    @State private var xOffset: CGFloat = 0
    @State private var degrees: CGFloat = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top) {
                Image(.michel)
                    .resizable()
                    .scaledToFill()
                
                SwipeActionIndicatorView(xOffset: $xOffset, screenCutoff: screenCutoff)
            }
            
            UserInfoView()
                .padding(.horizontal)
        }
        .frame(width: cardWidth, height: cardHeight)
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
    func onDragChanged(_ value: _ChangedGesture<DragGesture>.Value) {
        xOffset = value.translation.width
        degrees = Double(value.translation.width / 25)
    }
    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value) {
        let width = value.translation.width
        
        if abs(width) <= abs(screenCutoff) {
            xOffset = 0
            degrees = 0
        }
    }
}

private extension CardView {
    
    private var screenCutoff: CGFloat {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return 0
        }
        return (windowScene.screen.bounds.width / 2) * 0.8
    }
    
    private var cardWidth: CGFloat {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return 0
        }
        return windowScene.screen.bounds.width - 20
    }
    
    private var cardHeight: CGFloat {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return 0
        }
        return windowScene.screen.bounds.height / 1.45
    }
}

#Preview {
    CardView()
}
