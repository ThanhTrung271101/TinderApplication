//
//  MatchView.swift
//  TinderApplication
//
//  Created by Thành Trung on 17/9/24.
//

import SwiftUI

struct UserMatchView: View {
    @Binding var show: Bool
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.black.opacity(0.7))
                .ignoresSafeArea()
            
            VStack(spacing: 120) {
                VStack {
                    Text("It's a Match!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        
                    Text("You and Kelly have liked each other.")
                }
                .foregroundStyle(Color(.white))
                
                HStack(spacing: 16) {
                    Image(MockData.users[0].profileImageUrls[0])
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .overlay {
                            Circle()
                                .stroke(.white, lineWidth: 2)
                                .shadow(radius: 4)
                        }
                    
                    Image(MockData.users[1].profileImageUrls[1])
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .overlay {
                            Circle()
                                .stroke(.white, lineWidth: 2)
                                .shadow(radius: 4)
                        }
                }
                
                VStack(spacing: 16) {
                    
                    Button {
                        
                    } label: {
                        Text("Send Message")
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(.white))
                    .frame(width: 350, height: 44)
                    .background(Color(.systemPink))
                    .clipShape(Capsule())
                    
                    Button {
                        
                    } label: {
                        Text("Keep Swiping")
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(.white))
                    .frame(width: 350, height: 44)
                    .background(.clear)
                    .clipShape(Capsule())
                    .overlay {
                        Capsule()
                            .stroke(.white, lineWidth: 1)
                            .shadow(radius: 4)
                    }
                }
            }
        }
    }
}

#Preview {
    UserMatchView(show: .constant(true))
}
