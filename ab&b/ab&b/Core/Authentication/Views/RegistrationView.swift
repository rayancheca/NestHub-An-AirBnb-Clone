//
//  RegistrationView.swift
//  ab&b
//
//  Created by Rayan Karim checa on 8/3/24.
//

import SwiftUI

struct RegistrationView: View 
{
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @StateObject var viewModel = RegistrationViewModel(service: MockAuthService())
    @Environment(\.dismiss) var dismiss
    
    var body: some View
    {
        VStack
        {
            Spacer()
            
            Image("abblogo")
                .resizable()
                .scaledToFit()
                .frame(width: 270, height: 270)
               // .padding()
            
            VStack
            {
                TextField("Enter your email", text: $email)
                    .modifier(PrimaryTextFieldModifier())
                
                SecureField("Enter your password", text: $password)
                    .modifier(PrimaryTextFieldModifier())
                
                TextField("Enter your full name", text: $fullname)
                    .modifier(PrimaryTextFieldModifier())
                
            } // end vstack
            
            Button {
                Task{ await viewModel.createUser(
                    withEmail: email,
                    password: password,
                    fullname: fullname)
                }
            } label: {
                Text("Create account")
                    .modifier(PrimaryButtonModifier())
                
            } // end button label
            .disabled(!formIsValid)
            .opacity(formIsValid ? 1.0 : 0.7)
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 2)
                {
                    Text("Already have an account?")
                    
                    Text("Sign in")
                        .fontWeight(.semibold)
                } // end hstack
                .font(.footnote)
            } // end button label
            .padding(.vertical)
            
        } // end overall vstack
    } // end body
} // end struct 

// MARK - AuthenticationFormProtocol

extension RegistrationView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty && email.contains("@") && !password.isEmpty && password.count > 5 && !fullname.isEmpty
    }
    
    
} // end extension
#Preview {
    RegistrationView()
}
