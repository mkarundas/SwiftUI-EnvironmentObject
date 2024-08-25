//
//  EditEmailView.swift
//  EditProfileApp
//
//  Created by Arundas MK on 25/08/24.
//

import SwiftUI

struct EditEmailView: View {
    
    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    
    @EnvironmentObject var viewModel: ContentViewModel
    
    var body: some View {
        VStack {
            TextField("Edit your email", text: $email)
                .font(.subheadline)
                .cornerRadius(10)
                .padding(.horizontal, 4)
            Divider()
            Spacer()
        }
        .navigationTitle("Edit Email")
        .navigationBarTitleDisplayMode(.inline)
        .padding()
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Done") {
                    viewModel.user.email = email
                    dismiss()
                }
                .fontWeight(.semibold)
                        
            }
        }
    }
}

#Preview {
    NavigationStack {
        EditEmailView()
    }
}
