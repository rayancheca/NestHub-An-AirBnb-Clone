//
//  ListingItemView.swift
//  ab&b
//
//  Created by Rayan Karim checa on 7/14/24.
//

import SwiftUI

struct ListingItemView: View 
{
    let listing: Listing
    
    var body: some View
    {
        VStack(spacing: 8)
        {
            // images
            
            ListingimageCarouselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //listing details
            HStack(alignment: .top)
            {
                // details
                VStack(alignment: .leading)
                {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4)
                    {
                        Text("$\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                        Text("night")
                    } // end hstack
                    .foregroundStyle(.black)
                } // end vstack
                Spacer()
                
                //ratings
                HStack(spacing: 2)
                {
                    Image(systemName: "star.fill")
                    
                    //Text("\(listing.rating)")
                    Text(String(format: "%.2f", listing.rating))
                        
                } // end hstack
                .foregroundStyle(.black)
            } // end hstack
            .font(.footnote)
        } // end vstack
        //.padding()
    } // end body
} // end struct



struct ListingItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListingItemView(listing: DeveloperPreview.shared.listings[0])
    }
}
