//
//  CurrentUserProfileView.swift
//  TinderApplication
//
//  Created by Thành Trung on 15/9/24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    let user: User
    
    var body: some View {
        NavigationStack {
            List {
                // header
                CurrentUserProfileHeaderView(user: user)
                
                // account
                Section("Account Information") {
                    HStack {
                        Text("Name")
                        
                        Spacer()
                        
                        Text(user.fullName)
                    }
                    
                    HStack {
                        Text("Email")
                        
                        Spacer()
                        
                        Text("testemail@gmail.com")
                    }
                }
                
                // legal
                Section("Legal") {
                    Text("Term of Service")
                }
                
                // log out/delete
                Section {
                    Button {
                        print("DEBUG: Log out here ...")
                    } label: {
                        Text("Log out")
                    }
                    
                }
                .foregroundStyle(Color(.red))
                
                Section {
                    Button {
                        print("DEBUG: Delete account here ...")

                    } label: {
                        Text("Delete Account")
                            .foregroundStyle(Color(.red))
                    }
                }
                .foregroundStyle(Color(.red))
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: MockData.users[1])
}
