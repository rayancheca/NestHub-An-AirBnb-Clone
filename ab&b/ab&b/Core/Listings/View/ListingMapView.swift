//
//  ListingMapView.swift
//  ab&b
//
//  Created by Rayan Karim checa on 8/3/24.
//

import SwiftUI
import MapKit

struct ListingMapView: View 
{
    private let listings: [Listing]
    @State private var cameraPosition: MapCameraPosition
    @State private var selectedListing: Listing?
    @State private var showDetails = false
    @Environment(\.dismiss) var dismiss
    
    init (listings: [Listing], center: CLLocationCoordinate2D = .losAngeles)
    {
        self.listings = listings
        let coordinateRegion = MKCoordinateRegion(
            center: center,
            latitudinalMeters: 50000,
            longitudinalMeters: 50000
        )
        self._cameraPosition = State(initialValue: .region(coordinateRegion))
    }
    
    var body: some View
    {
        ZStack(alignment: .topLeading)
        {
            ZStack(alignment: .bottom)
            {
                Map(position: $cameraPosition, selection: $selectedListing)
                {
                    ForEach(listings, id: \.self) { listing in
                        Marker("", coordinate: listing.coordinates)
                            .tag(listing.id)
                    } // end for loop
                } // end map
                
                if let selectedListing 
                {
                    withAnimation(.spring)
                    {
                        ListingMapPreviewView(listing: selectedListing)
                            .onTapGesture { showDetails.toggle() }
                    } // end withanimation
                } // end if statement
            } // end zstack
            
            Button{
                dismiss()
            } label: {
                Image(systemName: "chevron.left")
                    .foregroundStyle(.black)
                    .background(
                        Circle()
                            .fill(.white)
                            .frame(width: 52, height: 59)
                            .shadow(radius: 4)
                    )
                    .padding(.top, 40)
                    .padding(.leading, 32)
            }
            
        } // end zstack
        .fullScreenCover(isPresented: $showDetails, content: {
            if let selectedListing
            {
                ListingDetailView(listing: selectedListing)
            }
        })
    } // end body
} // end struct

#Preview {
    ListingMapView(listings: DeveloperPreview.shared.listings)
}
