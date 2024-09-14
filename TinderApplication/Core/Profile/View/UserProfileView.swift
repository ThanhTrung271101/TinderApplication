//
//  UserProfileView.swift
//  TinderApplication
//
//  Created by Thành Trung on 13/9/24.
//

import SwiftUI

struct UserProfileView: View {
    @Environment(\.dismiss) var dismiss
    @State private var currentImageIndex = 0
    let user: User
    
    var body: some View {
        VStack {
            HStack {
                Text(user.fullName)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("\(user.age)")
                    .font(.title2)
                
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.down.circle.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(Color(.systemPink))
                }
            }
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    ZStack(alignment: .top) {
                        Image(user.profileImageUrls[currentImageIndex])
                            .resizable()
                            .scaledToFill()
                            .frame(width: SizeConstant.cardWidth, height: SizeConstant.cardHeight)
                            .overlay {
                                ImageSrollingOverlay(currentImageIndex: $currentImageIndex, currentIndex: user.profileImageUrls.count)
                            }
                        
                        CardImageIndicatorView(currentImageIndex: currentImageIndex, imageCount: user.profileImageUrls.count)
                    }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("About me")
                            .fontWeight(.semibold)
                        
                        Text("Some text for bio now ...")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .font(.subheadline)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("Essentials")
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "person")
                        
                        Text("Woman")
                        
                        Spacer()
                    }
                    
                    Divider()
                    
                    HStack {
                        Image(systemName: "arrow.up.backward.and.arrow.down.forward.circle")
                        
                        Text("Straight")
                        
                        Spacer()
                    }
                    
                    Divider()
                    
                    HStack {
                        Image(systemName: "book")
                        
                        Text("Actress")
                        
                        Spacer()
                    }
                    
                    Divider()

                }
                .padding()
                .background(Color(.secondarySystemBackground))
                .font(.subheadline)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
    }
}

#Preview {
    UserProfileView(user: MockData.users[0])
}
