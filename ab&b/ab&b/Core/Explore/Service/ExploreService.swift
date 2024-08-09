//
//  ExploreService.swift
//  ab&b
//
//  Created by Rayan Karim checa on 7/17/24.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
