//
//  WishlistView.swift
//  ab&b
//
//  Created by Rayan Karim checa on 7/17/24.
//

import SwiftUI

struct WishlistView: View 
{
    @State private var showLogin = false
    
    @ObservedObject var authManager: AuthManager
    
    init(authManager: AuthManager){
        self.authManager = authManager
    }
    
    var body: some View
    {
        NavigationStack
        {
            VStack 
            {
                if authManager.userSessionId == nil {
                    WishlistsLoginView(showLogin: $showLogin)
                } else {
                    WishListEmptyStateView()
                }
            }
            .padding()
            .sheet(isPresented: $showLogin, content: {
                LoginView(authManager: authManager)
                    .presentationDetents([.large, .large])
                    .presentationDragIndicator(.visible)
            })
            .navigationTitle("Wishlists")

        } // end navigationstack
    } // end body
} // end struct

#Preview {
    WishlistView(authManager: AuthManager(service: MockAuthService()))
}
