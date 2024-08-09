//
//  LoginViewModel.swift
//  ab&b
//
//  Created by Rayan Karim checa on 8/3/24.
//

import Foundation

class LoginViewModel: ObservableObject
{
    private let authManager: AuthManager
    init(authManager: AuthManager) {
        self.authManager = authManager
    }
    
    func login(withEmail email: String, password: String ) async {
        do {
            try await authManager.login(withEmail: email, password: password)
        } catch {
            print("DEBUG: Failed to login with error \(error.localizedDescription)")
        }
    }
}
