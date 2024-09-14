//
//  UserInfoView.swift
//  TinderApplication
//
//  Created by Thành Trung on 7/9/24.
//

import SwiftUI

struct UserInfoView: View {
    @Binding var showProfileModal: Bool
    
    let user: User
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(user.fullName)
                    .font(.title)
                    .fontWeight(.heavy)
                Text("\(user.age)")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    showProfileModal.toggle()
                } label: {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.semibold)
                        .imageScale(.large)
                }
            }
            
            Text("Some bio test for now")
                .font(.subheadline)
                .lineLimit(2)
        }
        .foregroundStyle(Color(.white))
        .padding()
        .background(
            LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    UserInfoView(showProfileModal: .constant(true), user: MockData.users[1])
}
