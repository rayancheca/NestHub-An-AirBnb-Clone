//
//  MainTabView.swift
//  ab&b
//
//  Created by Rayan Karim checa on 7/17/24.
//

import SwiftUI

struct MainTabView: View 
{
    private let authManager: AuthManager
    
    init(authManager: AuthManager){
        self.authManager = authManager
    }
    
    var body: some View
    {
        TabView
        {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            
            WishlistView(authManager: authManager)
                .tabItem { Label("Wishlits", systemImage: "heart") }
            
            ProfileView(authManager: authManager)
                .tabItem { Label("Profile", systemImage: "person") }
            
        } // end tabview
    } // end body
} // end struct

#Preview {
    MainTabView(authManager: AuthManager(service: MockAuthService()))
}
