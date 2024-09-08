//
//  SwipeActionIndicatorView.swift
//  TinderApplication
//
//  Created by Thành Trung on 8/9/24.
//

import SwiftUI

struct SwipeActionIndicatorView: View {
    @Binding var xOffset: CGFloat
    let screenCutoff: CGFloat
    var body: some View {
        HStack {
            Text("LIKE")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(Color(.green))
                .overlay {
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color(.green), lineWidth: 2)
                        .frame(width: 100, height: 48)
                }
                .rotationEffect(.degrees(-45))
                .opacity(Double(xOffset / screenCutoff))
            
            Spacer()
            
            Text("NOPE")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(Color(.red))
                .overlay {
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color(.red), lineWidth: 2)
                        .frame(width: 100, height: 48)
                }
                .rotationEffect(.degrees(45))
                .opacity(Double(xOffset / screenCutoff) * -1)
        }
        .padding(60)
    }
}

#Preview {
    SwipeActionIndicatorView(xOffset: .constant(20), screenCutoff: -1)
}
