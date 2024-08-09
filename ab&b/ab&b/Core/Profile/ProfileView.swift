//
//  ProfileView.swift
//  ab&b
//
//  Created by Rayan Karim checa on 7/17/24.
//

import SwiftUI

struct ProfileView: View 
{
    @ObservedObject var authManager: AuthManager
    @State private var showLogin = false
    
    init(authManager: AuthManager) {
        self.authManager = authManager
    }
    var body: some View
    {
        VStack 
        {
            // profile login view
            if authManager.userSessionId == nil 
            {
                ProfileLoginView(showLogin: $showLogin)
            } else {
                UserProfileHeaderView()
            }
            
            // profile options
            VStack(spacing: 24)
            {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help center")
            }
            .padding(.vertical)
            
            if authManager.userSessionId != nil {
                Button{
                    authManager.signout()
                } label: {
                    Text("Log Out")
                        .underline()
                        .foregroundStyle(.black)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            
        } // end vstack
        .sheet(isPresented: $showLogin, content: {
            LoginView(authManager: authManager)
                .presentationDragIndicator(.visible)
        })
        .padding()
    } // end body
} // end struct

#Preview {
    ProfileView(authManager: AuthManager(service: MockAuthService()))
}
