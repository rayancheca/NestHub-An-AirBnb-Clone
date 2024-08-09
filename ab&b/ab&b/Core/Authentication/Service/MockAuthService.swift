//
//  MockAuthService.swift
//  ab&b
//
//  Created by Rayan Karim checa on 8/3/24.
//

import Foundation

struct MockAuthService: AuthServiceProtocol
{
    
    func login(withEmail email: String, password: String) async throws -> String? 
    {
        return NSUUID().uuidString
    }
    
    func createUser(withEmail email: String, password: String, fullname: String) async throws -> String? 
    {
        return NSUUID().uuidString
    }
    
    func signout() {}
    
}
