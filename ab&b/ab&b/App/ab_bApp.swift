//
//  ab_bApp.swift
//  ab&b
//
//  Created by Rayan Karim checa on 7/14/24.
//

import SwiftUI

@main
struct ab_bApp: App 
{
    let authManager = AuthManager(service: MockAuthService())
    var body: some Scene
    {
        WindowGroup {
            ContentView(authManager: authManager)
        }
    }
}
