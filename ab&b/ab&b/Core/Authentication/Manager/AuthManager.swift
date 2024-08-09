//
//  AuthManager.swift
//  ab&b
//
//  Created by Rayan Karim checa on 8/3/24.
//

import Foundation

class AuthManager: ObservableObject {
    @Published var userSessionId: String?
    
    private let service: AuthServiceProtocol
    
    init(service: AuthServiceProtocol) {
        self.service = service
        
        self.userSessionId = "1234"
    }
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
         self.userSessionId = try await service.login(withEmail: email, password: password)
    }
    
    @MainActor
    func createUser(withEmail email: String, password: String, fullname: String) async throws {
         self.userSessionId = try await service.createUser(withEmail: email, password: password, fullname: fullname)
    }
    
    @MainActor
    func signout(){
        service.signout()
        self.userSessionId = nil
    }
}
