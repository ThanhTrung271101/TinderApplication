//
//  UserInfoView.swift
//  TinderApplication
//
//  Created by Thành Trung on 7/9/24.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Mogan")
                    .font(.title)
                    .fontWeight(.heavy)
                Text("37")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    print("DEBUG: Show profile here ...")
                } label: {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.semibold)
                        .imageScale(.large)
                }
            }
            
            Text("Actress | Witch")
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
    UserInfoView()
}
