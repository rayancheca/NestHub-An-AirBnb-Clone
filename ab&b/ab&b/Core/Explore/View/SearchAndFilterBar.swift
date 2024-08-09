//
//  SearchAndFilterBar.swift
//  ab&b
//
//  Created by Rayan Karim checa on 7/14/24.
//

import SwiftUI

struct SearchAndFilterBar: View 
{
    @Binding var location: String
    
    var body: some View
    {
        HStack
        {
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading, spacing: 2)
            {
                Text(location.isEmpty ? "Where to?" : location)
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("\(location.isEmpty ? "Anywhere - " : "")Any Week - Add guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)
                
            } // end Vstack
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            }) // end button

        } // end HStack
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay
        {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color: .black.opacity(0.4), radius: 2)
        } // end overlay
        .padding()
    } // end voody
} // end struct

#Preview {
    SearchAndFilterBar(location: .constant("Los Angeles"))
}
