//
//  WishlistsLoginView.swift
//  ab&b
//
//  Created by Rayan Karim checa on 8/4/24.
//

import SwiftUI

struct WishlistsLoginView: View {
    @Binding var showLogin: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing :32)
        {
            VStack(alignment: .leading, spacing :4)
            {
                Text("Log in to view your wishlists")
                    .font(.subheadline)
                
                Text("You can create, view or edit wishlists once you have logged in")
                    .font(.footnote)
                
                Button{
                    showLogin.toggle()
                } label:{
                    Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                
            } // end vstack
            
            Spacer()
            
        } // end vstack
    }
}

#Preview {
    WishlistsLoginView(showLogin: .constant(false))
}
