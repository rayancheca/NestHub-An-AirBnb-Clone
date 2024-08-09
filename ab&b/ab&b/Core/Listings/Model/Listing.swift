//
//  Listing.swift
//  ab&b
//
//  Created by Rayan Karim checa on 7/17/24.
//

import Foundation
import CoreLocation

struct Listing: Identifiable, Codable, Hashable
{
    let id: String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    let latitude: Double
    let longitude: Double
    let address: String
    let city: String
    let state: String
    let title: String
    let type: ListingType
    var imageURLs: [String]
    var rating: Double
    var pricePerNight: Int
    var features: [ListingFeatures]
    var amenities: [ListingAmenities]
    var reviews: Int
    
    var coordinates: CLLocationCoordinate2D {
        return .init(latitude: latitude, longitude: longitude)
    }
    
    
} // end struct


enum ListingFeatures: Int, Codable, Identifiable, Hashable
{
    case selfCheckin
    case superHost
    case greatLocation
    case greatCheckinExperience
    case greatForRemoteWork
    case top10PercentOfHomes
    case dedicatedWorkSpace
    
    
    var title: String{
        switch self{
        case .selfCheckin: return "Self check-in"
        case .superHost: return "Superhost"
        case .greatLocation: return "Great Location"
        case .greatCheckinExperience: return "Great Check-in Experience"
        case .greatForRemoteWork: return "Great for Remote Work"
        case .top10PercentOfHomes: return "Top 10% of Homes"
        case .dedicatedWorkSpace: return "Dedicated Workspace"
        }
    }
    
    var imageName: String{
        switch self{
        case .selfCheckin: return "door.left.hand.open"
        case .superHost: return "medal"
        case .greatLocation: return "mappin.circle"
        case .greatCheckinExperience: return "key.radiowaves.forward.fill"
        case .greatForRemoteWork: return "desktopcomputer"
        case .top10PercentOfHomes: return "trophy"
        case .dedicatedWorkSpace: return "studentdesk"
        }
    }
    
    var subtitle: String{
        switch self{
        case .selfCheckin: 
            return "Check yourself in with the smartlock."
        case .superHost:
            return "Superhosts are experienced, highly rated hosts who are commited to providing great stays for guests"
        case .greatLocation: 
            return "100% of recent guests gave the location a 5-star rating."
        case .greatCheckinExperience: 
            return "100% of recent guests gave the check-in process a 5-star rating."
        case .greatForRemoteWork: 
            return "Fast wifi at 422 Mbps, plus a dedicated workspace in a common area."
        case .top10PercentOfHomes: 
            return "This home is highly ranked based on ratings, reviews, and reliability."
        case .dedicatedWorkSpace: 
            return "A room with wifi that’s well-suited for working."
        }
    }
    
    var id: Int { return self.rawValue }
} // end enum
/*
enum ListingAmenities: Int, Codable, Identifiable, Hashable
{
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony// next
    case petsAllowed
    case elevator
    case evCharger
    case garage
    case gym
    case airConditioning
    case hairDryer
    case microwave
    case soundSystem
    case bathtub
    
    var title: String {
        switch self {
        case .pool: return "Pool"
        case .kitchen: return "Kitchen"
        case .wifi: return "Wifi"
        case .laundry: return "Laundry"
        case .tv: return "TV"
        case .alarmSystem: return "Alarm System"
        case .office: return "Office"
        case .balcony: return "Balcony"// ----------
        case .petsAllowed: return "Pets Allowed"
        case .elevator: return "Elevator"
        case .evCharger: return "Pets Allowed"
        case .elevator: return "Elevator"
        case .evCharger: return "EV Charger"
        case .garage: return "Garage"
        case .gym: return "Gym"
        case .airConditioning: return "Air Conditioning"
        case .hairDryer: return "Hair Dryer"
        case .microwave: return "Microwave"
        case .soundSystem: return "Sound System"
        case .balcony: return "Balcony"
        case .bathtub: return "Bathtub"
        }
    }

    var imageName: String {
        switch self {
        case .pool: return "figure.pool.swim"
        case .kitchen: return "fork.knife"
        case .wifi: return "wifi"
        case .laundry: return "washer"
        case .tv: return "tv"
        case .alarmSystem: return "checkerboard.shield"
        case .office: return "pencil.and.ruler.fill"
        case .balcony: return "building"// ----------
        case .petsAllowed: return "Pets Allowed"
        case .elevator: return "Elevator"
        case .evCharger: return "Pets Allowed"
        case .elevator: return "Elevator"
        case .evCharger: return "EV Charger"
        case .garage: return "Garage"
        case .gym: return "Gym"
        case .airConditioning: return "Air Conditioning"
        case .hairDryer: return "Hair Dryer"
        case .microwave: return "Microwave"
        case .soundSystem: return "Sound System"
        case .balcony: return "Balcony"
        case .bathtub: return "Bathtub"
        }
    }
    
    var id: Int { return self.rawValue }
} // end enum
*/
enum ListingAmenities: Int, Codable, Identifiable, Hashable
{
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    case petsAllowed
    case elevator
    case evCharger
    case garage
    case gym
    case airConditioning
    case hairDryer
    case microwave
    case soundSystem
    case bathtub
    
    var title: String {
        switch self {
        case .pool: return "Pool"
        case .kitchen: return "Kitchen"
        case .wifi: return "Wifi"
        case .laundry: return "Laundry"
        case .tv: return "TV"
        case .alarmSystem: return "Alarm System"
        case .office: return "Office"
        case .balcony: return "Balcony"
        case .petsAllowed: return "Pets Allowed"
        case .elevator: return "Elevator"
        case .evCharger: return "EV Charger"
        case .garage: return "Garage"
        case .gym: return "Gym"
        case .airConditioning: return "Air Conditioning"
        case .hairDryer: return "Hair Dryer"
        case .microwave: return "Microwave"
        case .soundSystem: return "Sound System"
        case .bathtub: return "Bathtub"
        }
    }
    
    var imageName: String {
        switch self {
        case .pool: return "figure.pool.swim"
        case .kitchen: return "fork.knife"
        case .wifi: return "wifi"
        case .laundry: return "washer"
        case .tv: return "tv"
        case .alarmSystem: return "checkerboard.shield"
        case .office: return "pencil.and.ruler.fill"
        case .balcony: return "building"
        case .petsAllowed: return "pawprint"
        case .elevator: return "arrow.up.arrow.down"
        case .evCharger: return "bolt.car"
        case .garage: return "car.2"
        case .gym: return "figure.strengthtraining.traditional"
        case .airConditioning: return "wind"
        case .hairDryer: return "hairdryer"
        case .microwave: return "microwave"
        case .soundSystem: return "speaker.2"
        case .bathtub: return "bathtub"
        }
    }
    
    var id: Int { return self.rawValue }
} // end enum

enum ListingType: Int, Codable, Identifiable, Hashable {
    case apartment
    case house
    case townhouse
    case villa
    case treehouse
    case hotel
    case suite
    case loft
    
    var description: String {
        switch self{
        case .apartment: return "Apartment"
        case .house: return "Hosue"
        case .townhouse: return "Town house"
        case .villa: return "Villa" // find sf symbols of the following
        case .treehouse: return "Treehouse"
        case .hotel: return "Hotel"
        case .suite: return "Suite"
        case .loft: return "Loft"
        }
    }
    
    var id: Int { return self.rawValue }
}
