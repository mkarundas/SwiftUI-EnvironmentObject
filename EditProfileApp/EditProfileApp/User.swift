//
//  User.swift
//  EditProfileApp
//
//  Created by Arundas MK on 25/08/24.
//

import Foundation


struct User {
    let fullName: String
    var email: String
    var address: String
    
    var initials: String? {
        let formatter = PersonNameComponentsFormatter()
        guard let components = formatter.personNameComponents(from: fullName) else {
            return nil
        }
        formatter.style = .abbreviated
        return formatter.string(from: components)
    }
}
