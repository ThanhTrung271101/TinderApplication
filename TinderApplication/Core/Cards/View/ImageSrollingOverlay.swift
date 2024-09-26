//
//  ImageSrollingOverlay.swift
//  TinderApplication
//
//  Created by Thành Trung on 9/9/24.
//

import SwiftUI

struct ImageSrollingOverlay: View {
    @Binding var currentImageIndex: Int
    let currentIndex: Int
    var body: some View {
        HStack {
            Rectangle()
                .onTapGesture {
                    updateImageIndex(increment: false)
                }

            Rectangle()
                .onTapGesture {
                    updateImageIndex(increment: true)
                }
        }
        .foregroundStyle(Color(.white).opacity(0.01))
    }
}

private extension ImageSrollingOverlay {
    func updateImageIndex(increment: Bool) {
        if increment {
            guard currentImageIndex < currentIndex - 1 else { return }
            currentImageIndex += 1
        } else {
            guard currentImageIndex > 0 else { return }
            currentImageIndex -= 1
        }
    }
}

#Preview {
    ImageSrollingOverlay(currentImageIndex: .constant(1), currentIndex: 2)
}
