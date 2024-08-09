//
//  WishListEmptyStateView.swift
//  ab&b
//
//  Created by Rayan Karim checa on 8/4/24.
//

import SwiftUI

struct WishListEmptyStateView: View 
{
    var body: some View 
    {
        VStack(alignment: .leading, spacing: 12)
        {
            
            Text("Create your first wishlists")
                .font(.headline)
            
            
            Text("As you explore, tap the heart icon to save your favourite wishlists")
            
            Spacer()
   
        } // end vstack
        .padding()
    } // end body
} // end struct

#Preview {
    WishListEmptyStateView()
}
