//
//  ListingMapPreviewView.swift
//  ab&b
//
//  Created by Rayan Karim checa on 8/3/24.
//

import SwiftUI

struct ListingMapPreviewView: View 
{
    let listing: Listing
    
    var body: some View 
    {
        VStack
        {
            TabView
            {
                ForEach(listing.imageURLs, id: \.self) { imageUrl in
                    Image(imageUrl)
                        .resizable()
                        .scaledToFill()
                        .clipShape(Rectangle())
                } // end for loop
            } // end tabview
            .frame(height: 200)
            .tabViewStyle(.page)
            
            HStack(alignment: .top)
            {
                VStack(alignment: .leading)
                {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                    
                    Text("7 nights: Dec 12 -20")
                    
                    HStack(spacing: 4)
                    {
                        Text("$\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                        
                        Text("night")
                    } // end hstack
                } // end vstack
                
                Spacer()
                
                Text(String(format: "%.2f", listing.rating))
            } // end hstack
            .font(.footnote)
            .padding(8)
            
            
        } // end vstack
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
        .padding()
    
    } // end body
} // end struct

#Preview {
    ListingMapPreviewView(listing: DeveloperPreview.shared.listings[0])
}
