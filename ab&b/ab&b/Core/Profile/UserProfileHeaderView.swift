//
//  UserProfileHeaderView.swift
//  ab&b
//
//  Created by Rayan Karim checa on 8/4/24.
//

import SwiftUI

struct UserProfileHeaderView: View 
{
    var body: some View 
    {
        ZStack
        {
            RoundedRectangle(cornerRadius: 28)
                .fill(.white)
                .frame(width: 300, height: 200)
                .shadow(radius: 10)
            
            VStack(spacing: 12)
            {
                CircularProfileImageView(size: .xLarge)
                
                VStack
                {
                    Text("joe malone")
                        .font(.headline)
                    
                    Text("Guest")
                        .font(.footnote)
                }
            } // end vstack
            
        } // end zstack
    } // end body
} // end struct

#Preview {
    UserProfileHeaderView()
}
