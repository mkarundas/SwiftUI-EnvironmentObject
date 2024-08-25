//
//  EditProfileView.swift
//  EditProfileApp
//
//  Created by Arundas MK on 25/08/24.
//

import SwiftUI

struct EditProfileView: View {
    
    @EnvironmentObject var viewModel: ContentViewModel
    
    private var user: User {
        return viewModel.user
    }
    
    
    var body: some View {
        List {
            Section("Edit Options") {
                Text(user.fullName)
                NavigationLink{
                    EditEmailView()
                } label: {
                    Text(user.email)
                }
                NavigationLink{
                    EditAddressView()
                } label: {
                    Text(user.address)
                }
            }
        }
    }
}

#Preview {
    EditProfileView()
}


