//
//  ProfileImageGridView.swift
//  TinderApplication
//
//  Created by Thành Trung on 16/9/24.
//

import SwiftUI

struct ProfileImageGridView: View {
    let user: User

    var body: some View {
        LazyVGrid(columns: columns, spacing: 16) {
            ForEach(0 ..< 9) { index in
                if index < user.profileImageUrls.count {
                    Image(user.profileImageUrls[index])
                        .resizable()
                        .scaledToFill()
                        .frame(width: imageWidth, height: imageHeight)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                } else {
                    ZStack(alignment: .bottomTrailing) {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(Color(.secondarySystemBackground))
                            .frame(width: imageWidth, height: imageHeight)

                        Button {

                        } label: {
                            Image(systemName: "plus.circle.fill")
                                .imageScale(.large)
                                .foregroundStyle(Color(.systemPink))
                                .offset(x: 4, y: 4)
                        }
                    }
                }
            }
        }
    }
}

private extension ProfileImageGridView {
    var columns: [GridItem] {
        [
            .init(.flexible()),
            .init(.flexible()),
            .init(.flexible())
        ]
    }

    var imageWidth: CGFloat {
        return 110
    }

    var imageHeight: CGFloat {
        return 160
    }
}

#Preview {
    ProfileImageGridView(user: MockData.users[0])
}
