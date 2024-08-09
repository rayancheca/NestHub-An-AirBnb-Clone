//
//  ListingimageCarouselView.swift
//  ab&b
//
//  Created by Rayan Karim checa on 7/14/24.
//

import SwiftUI

struct ListingimageCarouselView: View 
{
    let listing: Listing
    
    var body: some View
    {
        TabView
        {
            ForEach(listing.imageURLs, id: \.self) { image in
                    Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    } // end body
} // end struct

#Preview {
    ListingimageCarouselView(listing: DeveloperPreview.shared.listings[0])
}
