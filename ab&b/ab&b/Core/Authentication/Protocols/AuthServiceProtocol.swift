//
//  AuthServiceProtocol.swift
//  ab&b
//
//  Created by Rayan Karim checa on 8/3/24.
//

import Foundation

protocol AuthServiceProtocol {
    func login(withEmail email: String, password: String) async throws -> String?
    func createUser(withEmail email: String, password: String, fullname: String) async throws -> String?
    func signout()
}
