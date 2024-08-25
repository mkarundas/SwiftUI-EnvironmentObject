//
//  EditAddressView.swift
//  EditProfileApp
//
//  Created by Arundas MK on 25/08/24.
//

import SwiftUI

struct EditAddressView: View {
    @State private var address = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: ContentViewModel
    
    var body: some View {
        VStack {
            TextField("Edit your address", text: $address)
                .font(.subheadline)
                .cornerRadius(10)
                .padding(.horizontal, 4)
            Divider()
            Spacer()
        }
        .navigationTitle("Edit Address")
        .navigationBarTitleDisplayMode(.inline)
        .padding()
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Done") {
                    viewModel.user.address = address
                    dismiss()
                }
                .fontWeight(.semibold)
                        
            }
        }
    }
}

#Preview {
    NavigationStack {
        EditAddressView()
    }
}
