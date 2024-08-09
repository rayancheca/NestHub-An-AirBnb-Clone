//
//  ProfileOptionRowView.swift
//  ab&b
//
//  Created by Rayan Karim checa on 7/17/24.
//

import SwiftUI

struct ProfileOptionRowView: View 
{
    let imageName: String
    let title: String
    
    var body: some View 
    {
        VStack{
            HStack{
                Image(systemName: imageName)
                
                Text(title)
                    .font(.subheadline)
                    
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            Divider()
        }
    } // end body
} // end struct

#Preview {
    ProfileOptionRowView(imageName: "gear", title: "Settings")
}
