//
//  LoginView.swift
//  ab&b
//
//  Created by Rayan Karim checa on 8/3/24.
//

import SwiftUI

struct LoginView: View 
{
    @State private var email = ""
    @State private var password = ""
    @StateObject var viewModel: LoginViewModel
    
    @Environment(\.dismiss) var dismiss
    
    private let authManager: AuthManager
    
    init(authManager: AuthManager) {
        self.authManager = authManager
        self._viewModel = StateObject(wrappedValue: LoginViewModel(authManager: authManager))
    }
    
    var body: some View
    {
        NavigationStack
        {
            VStack
            {
                Spacer()
                
                Image("abblogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 270, height: 270)
                    .padding()
                
                VStack
                {
                    TextField("Enter your email", text: $email)
                        .modifier(PrimaryTextFieldModifier())

                    SecureField("Enter your password", text: $password)
                        .modifier(PrimaryTextFieldModifier())
                    
                }
                
                NavigationLink{
                    
                } label: {
                    Text("Forgot password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                Button {
                    Task{ await viewModel.login(
                        withEmail: email,
                        password:  password)
                        dismiss()
                    }
                } label: {
                    Text("Login")
                        .modifier(PrimaryButtonModifier())
                    
                } // end button label
                .padding(.vertical)
                .disabled(!formIsValid)
                .opacity(formIsValid ? 1.0 : 0.7)
                
                Spacer()
                
                Divider()
                
                NavigationLink{
                    RegistrationView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack(spacing: 2)
                    {
                        Text("Dont have an account?")
                        
                        Text("Sign up")
                            .fontWeight(.semibold)
                    } // end hstack
                    .font(.footnote)
                } // end navigationlink label
                .padding(.vertical)
            } // end vstack
        } // end navigationstack
    } // end body
} // end struct

// MARK - AuthenticationFormProtocol

extension LoginView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty && email.contains("@") && !password.isEmpty
    }
    
    
} // end extension

#Preview {
    LoginView(authManager: AuthManager(service: MockAuthService()))
}
