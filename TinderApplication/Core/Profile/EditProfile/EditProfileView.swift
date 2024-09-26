//
//  EditProfileView.swift
//  TinderApplication
//
//  Created by Thành Trung on 16/9/24.
//

import SwiftUI

struct EditProfileView: View {
    @Environment(\.dismiss) var dismiss
    let user: User
    @State private var bio = ""
    @State private var occupation = "Business Man"

    var body: some View {
        NavigationStack {
            ScrollView {
                ProfileImageGridView(user: user)
                    .padding()

                VStack(spacing: 24) {
                    VStack(alignment: .leading) {
                        Text("ABOUT ME")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.leading)

                        TextField("Add your bio", text: $bio, axis: .vertical)
                            .padding()
                            .frame(height: 64, alignment: .leading)
                            .background(Color(.secondarySystemBackground))
                            .font(.subheadline)
                    }

                    VStack(alignment: .leading) {
                        Text("OCCUPATION")
                            .fontWeight(.bold)
                            .padding(.leading)
                            .font(.subheadline)

                        HStack {
                            Image(systemName: "book")

                            Text("Occupation")

                            Spacer()

                            Text(occupation)
                                .font(.footnote)
                        }
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .font(.subheadline)
                    }

                    VStack(alignment: .leading) {
                        Text("GENDER")
                            .fontWeight(.bold)
                            .padding(.leading)
                            .font(.subheadline)

                        HStack {
                            Text("Man")

                            Spacer()

                            Image(systemName: "chevron.right")
                                .imageScale(.small)
                        }
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .font(.subheadline)
                    }

                    VStack(alignment: .leading) {
                        Text("SEXUAL ORIENTATION")
                            .fontWeight(.bold)
                            .padding(.leading)
                            .font(.subheadline)

                        HStack {
                            Text("Straight")

                            Spacer()

                            Image(systemName: "chevron.right")
                                .imageScale(.small)
                        }
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .font(.subheadline)
                    }
                }
            }
            .scrollIndicators(.hidden)
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }

                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") {
                        dismiss()
                    }
                    .fontWeight(.semibold)
                }
            }
        }
    }
}

#Preview {
    EditProfileView(user: MockData.users[0])
}
