//
//  CardView.swift
//  TinderApplication
//
//  Created by Thành Trung on 6/9/24.
//

import SwiftUI

struct CardView: View {
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(.michel)
                .resizable()
                .frame(width: cardWidth, height: cardHeight)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            UserInfoView()
        }
    }
}

private extension CardView {
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
