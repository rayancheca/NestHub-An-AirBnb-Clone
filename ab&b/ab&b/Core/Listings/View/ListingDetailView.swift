//
//  ListingDetailView.swift
//  ab&b
//
//  Created by Rayan Karim checa on 7/14/24.
//

import SwiftUI
import MapKit

struct ListingDetailView: View 
{
    
    @Environment(\.dismiss) var dismiss
    let listing: Listing
    @State private var cameraPosition: MapCameraPosition
    //default map to only show miami or los angeles
    /*
    init(listing: Listing){
        self.listing = listing
        let region = MKCoordinateRegion(
            center: listing.city == "Los Angeles" ? .losAngeles : .miami,
            span: MKCoordinateSpan(latitudeDelta: 0.1,
                                   longitudeDelta: 0.1)
        )
        self._cameraPosition = State(initialValue: .region(region))
    }
    */
    // map that uses all cities from regions file
    /*
    init(listing: Listing){
        self.listing = listing
        
        let defaultCoordinates = CLLocationCoordinate2D(latitude: 0, longitude: 0)
        let coordinates = CLLocationCoordinate2D.coordinates(for: listing.city) ?? defaultCoordinates
        
        let region = MKCoordinateRegion(
            center: coordinates,
            span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        )
        
        self._cameraPosition = State(initialValue: .region(region))
    }*/
    //map that uses location data from developerpreview file
    init(listing: Listing){
        self.listing = listing

        let coordinates = CLLocationCoordinate2D(latitude: listing.latitude, longitude: listing.longitude)
        let region = MKCoordinateRegion(
            center: coordinates,
            span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        )
        self._cameraPosition = State(initialValue: .region(region))
    }
    var body: some View
    {
        ScrollView
        {
            ZStack(alignment: .topLeading)
            {
                ListingimageCarouselView(listing: listing)
                    .frame(height: 320)
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 50, height: 50)
                        }
                        .padding(50)
                }
                .zIndex(1)
            }// end zstack
            
            VStack(alignment: .leading, spacing: 8)
            {
                Text(listing.title)
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading)
                {
                    //rating view (make reusable component)
                    HStack(spacing: 2)
                    {
                        Image(systemName: "star.fill")
                        
                        Text(String(format: "%.2f", listing.rating))
                        
                        Text(" - ")
                        Text("\(listing.reviews) reviews")
                            .underline()
                            .fontWeight(.semibold)
                    } // end hstack
                    .foregroundStyle(.black)
                    
                    Text("\(listing.city), \(listing.state)")
                }// end vstack
                .font(.caption)
            } // end vstack
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            // host info view
            HStack
            {
                VStack(alignment: .leading, spacing: 4)
                {
                    Text("Entire \(listing.type.description) hosted by \(listing.ownerName)")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    // property info
                    HStack(spacing: 2)
                    {
                        Text("\(listing.numberOfGuests) guests -")
                        Text("\(listing.numberOfBedrooms) bedrooms -")
                        Text("\(listing.numberOfBeds) beds -")
                        Text("\(listing.numberOfBathrooms) baths")
                    }// end Hstack
                    .font(.caption)
                } // end vstack
                .frame(width: 300, alignment: .leading)
                
                Spacer()
                
                Image(listing.ownerImageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                
            }// end hstack
            .padding()
            
            Divider()
            
            // listing feature view
            VStack(alignment: .leading, spacing: 16)
            {
                ForEach(listing.features) { feature in
                    HStack(spacing: 12){
                        Image(systemName: feature.imageName)
                        
                        VStack(alignment: .leading){
                            Text(feature.title)
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text(feature.subtitle)
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                }
            }// end vstack
            .padding()
            
            Divider()
            
            // Bedrooms View
            VStack(alignment: .leading, spacing: 16)
            {
                Text("Where you'll sleep")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false)
                {
                    HStack(spacing: 16)
                    {
                        ForEach( 1 ... listing.numberOfBedrooms, id: \.self ) { bedroom in
                            VStack
                            {
                                Image(systemName: "bed.double")
                                
                                Text("Bedroom \(bedroom)")
                                
                            } // end vstack
                            .frame(width: 132, height: 100)
                            .overlay{
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                            
                        }
                        
                    } // end hstack
                    
                } // end scrollview
                .scrollTargetBehavior(.paging)
            } // end vstack
            .padding()
            
            Divider()
            
            // listing amenities
            VStack(alignment: .leading, spacing: 16)
            {
                Text("What this place offers")
                    .font(.headline)
                
                ForEach(listing.amenities) { amenity in
                    HStack
                    {
                        Image(systemName: amenity.imageName)
                            .frame(width: 32)
                        
                        Text(amenity.title)
                            .font(.footnote)
                        
                        Spacer()
                        
                    } // end hstack
                } // end for loop
            } // end vstack
            .padding()
            
            Divider()
            
            //map view
            VStack(alignment: .leading, spacing: 16)
            {
                Text("Where you'll be")
                    .font(.headline)
                
                Map(position: $cameraPosition)
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }// end vstack
            .padding()
        } // end scrollview
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, 64)
        .overlay(alignment: .bottom)
        {
            VStack
            {
                Divider()
                    .padding(.bottom)
                
                HStack
                {
                    VStack(alignment: .leading)
                    {
                        Text("$\(listing.pricePerNight)")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Text("Total before taxes")
                            .font(.footnote)
                            
                        Text("Oct 15 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    } // end vstack
                    
                    Spacer()
                    
                    Button{
                        
                    } label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                    }
                }// end hstack
                .padding(.horizontal, 32)
            }// end vstack
            .background(.white)
        } // end overlay
    } // end body
} // end struct

#Preview {
    ListingDetailView(listing: DeveloperPreview.shared.listings[2])
}
