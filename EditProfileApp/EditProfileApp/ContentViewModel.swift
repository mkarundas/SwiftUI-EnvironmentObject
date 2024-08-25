//
//  ContentViewModel.swift
//  EditProfileApp
//
//  Created by Arundas MK on 25/08/24.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Published var user: User
    
    init() {
        self.user = User(fullName: "Stev Smith", email: "steve@gmail.com", address: "456 Main Street")
    }
}
