//
//  ExploreViewModel.swift
//  ab&b
//
//  Created by Rayan Karim checa on 7/17/24.
//

import Foundation

@MainActor
class ExploreViewModel: ObservableObject
{
    @Published var listings = [Listing]()
    @Published var searchLocation = ""
    private let service: ExploreService
    private var listingsCopy = [Listing]()
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }
    
    func fetchListings() async {
        do{
            self.listings = try await service.fetchListings()
            self.listingsCopy = listings
        }catch {
            print("DEBUG: Failed to fetch listings with error \(error.localizedDescription)")
        }
    }
    
    func updateListingsForLoaction() {
        let filteredListings = listings.filter({
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        })
        
        self.listings = filteredListings.isEmpty ? listingsCopy : filteredListings
    }
} // end class explore view model