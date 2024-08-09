//
//  ContentView.swift
//  ab&b
//
//  Created by Rayan Karim checa on 7/14/24.
//

import SwiftUI

struct ContentView: View 
{
    
    private let authManager: AuthManager
    
    init(authManager: AuthManager){
        self.authManager = authManager
    }
    
    var body: some View {
        MainTabView(authManager: authManager)
    }
}

#Preview {
    ContentView(authManager: AuthManager(service: MockAuthService()))
}
