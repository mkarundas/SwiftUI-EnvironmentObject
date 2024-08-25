//
//  ContentView.swift
//  EditProfileApp
//
//  Created by Arundas MK on 25/08/24.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel: ContentViewModel
    
    private var user: User {
        return viewModel.user
    }
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    EditProfileView()
                } label: {
                    HStack {
                        Text(user.initials ?? "")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(width: 48, height: 48)
                            .background(Color(.systemGray4))
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    }
                    VStack(alignment: .leading, spacing: 4) {
                        Text(user.fullName)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text(user.email)
                            .font(.footnote)
                            .foregroundStyle(.gray)
                            .padding(.leading, 2)
                            .tint(.gray)
                        Text(user.address)
                            .font(.footnote)
                            .foregroundStyle(.gray)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
