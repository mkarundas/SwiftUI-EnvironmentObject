//
//  EditProfileAppApp.swift
//  EditProfileApp
//
//  Created by Arundas MK on 25/08/24.
//

import SwiftUI

@main
struct EditProfileAppApp: App {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
