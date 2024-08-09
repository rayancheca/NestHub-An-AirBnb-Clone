//
//  Regions.swift
//  ab&b
//
//  Created by Rayan Karim checa on 7/27/24.
//
/*
import CoreLocation

extension CLLocationCoordinate2D {
    static var losAngeles = CLLocationCoordinate2D(latitude: 35.8549, longitude: -118.2426)
    static var miami = CLLocationCoordinate2D(latitude: 25.7682, longitude: -80.1959)
}
*/

//some cities
/*
import CoreLocation

extension CLLocationCoordinate2D {
    static var losAngeles = CLLocationCoordinate2D(latitude: 34.0522, longitude: -118.2437)
    static var aspen = CLLocationCoordinate2D(latitude: 39.1911, longitude: -106.8175)
    static var newYork = CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060)
    static var sanFrancisco = CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)
    static var miami = CLLocationCoordinate2D(latitude: 25.7617, longitude: -80.1918)
    static var lasVegas = CLLocationCoordinate2D(latitude: 36.1699, longitude: -115.1398)
    static var london = CLLocationCoordinate2D(latitude: 51.5074, longitude: -0.1278)
    static var paris = CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522)
    static var tokyo = CLLocationCoordinate2D(latitude: 35.6895, longitude: 139.6917)
    
    static func coordinates(for city: String) -> CLLocationCoordinate2D? {
        switch city {
        case "Los Angeles": return .losAngeles
        case "Aspen": return .aspen
        case "New York": return .newYork
        case "San Francisco": return .sanFrancisco
        case "Miami": return .miami
        case "Las Vegas": return .lasVegas
        case "London": return .london
        case "Paris": return .paris
        case "Tokyo": return .tokyo
        default: return nil
        }
    }
}
*/
// more cities
import CoreLocation

extension CLLocationCoordinate2D {
    static var losAngeles = CLLocationCoordinate2D(latitude: 34.0522, longitude: -118.2437)
    static var aspen = CLLocationCoordinate2D(latitude: 39.1911, longitude: -106.8175)
    static var newYork = CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060)
    static var sanFrancisco = CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)
    static var miami = CLLocationCoordinate2D(latitude: 25.7617, longitude: -80.1918)
    static var lasVegas = CLLocationCoordinate2D(latitude: 36.1699, longitude: -115.1398)
    static var london = CLLocationCoordinate2D(latitude: 51.5074, longitude: -0.1278)
    static var paris = CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522)
    static var tokyo = CLLocationCoordinate2D(latitude: 35.6895, longitude: 139.6917)

    // Top 50 cities in the world
    static var beijing = CLLocationCoordinate2D(latitude: 39.9042, longitude: 116.4074)
    static var shanghai = CLLocationCoordinate2D(latitude: 31.2304, longitude: 121.4737)
    static var dubai = CLLocationCoordinate2D(latitude: 25.276987, longitude: 55.296249)
    static var hongKong = CLLocationCoordinate2D(latitude: 22.3193, longitude: 114.1694)
    static var singapore = CLLocationCoordinate2D(latitude: 1.3521, longitude: 103.8198)
    static var sydney = CLLocationCoordinate2D(latitude: -33.8688, longitude: 151.2093)
    static var moscow = CLLocationCoordinate2D(latitude: 55.7558, longitude: 37.6173)
    static var istanbul = CLLocationCoordinate2D(latitude: 41.0082, longitude: 28.9784)
    static var bangkok = CLLocationCoordinate2D(latitude: 13.7563, longitude: 100.5018)
    static var delhi = CLLocationCoordinate2D(latitude: 28.7041, longitude: 77.1025)
    static var seoul = CLLocationCoordinate2D(latitude: 37.5665, longitude: 126.9780)
    static var mumbai = CLLocationCoordinate2D(latitude: 19.0760, longitude: 72.8777)
    static var mexicoCity = CLLocationCoordinate2D(latitude: 19.4326, longitude: -99.1332)
    static var saoPaulo = CLLocationCoordinate2D(latitude: -23.5505, longitude: -46.6333)
    static var buenosAires = CLLocationCoordinate2D(latitude: -34.6037, longitude: -58.3816)
    static var rioDeJaneiro = CLLocationCoordinate2D(latitude: -22.9068, longitude: -43.1729)
    static var cairo = CLLocationCoordinate2D(latitude: 30.0444, longitude: 31.2357)
    static var capeTown = CLLocationCoordinate2D(latitude: -33.9249, longitude: 18.4241)
    static var johannesburg = CLLocationCoordinate2D(latitude: -26.2041, longitude: 28.0473)
    static var toronto = CLLocationCoordinate2D(latitude: 43.651070, longitude: -79.347015)
    static var vancouver = CLLocationCoordinate2D(latitude: 49.2827, longitude: -123.1207)
    static var montreal = CLLocationCoordinate2D(latitude: 45.5017, longitude: -73.5673)
    static var chicago = CLLocationCoordinate2D(latitude: 41.8781, longitude: -87.6298)
    static var boston = CLLocationCoordinate2D(latitude: 42.3601, longitude: -71.0589)
    static var atlanta = CLLocationCoordinate2D(latitude: 33.7490, longitude: -84.3880)
    static var houston = CLLocationCoordinate2D(latitude: 29.7604, longitude: -95.3698)
    static var washingtonDC = CLLocationCoordinate2D(latitude: 38.9072, longitude: -77.0369)
    static var seattle = CLLocationCoordinate2D(latitude: 47.6062, longitude: -122.3321)
    static var sanDiego = CLLocationCoordinate2D(latitude: 32.7157, longitude: -117.1611)
    static var dallas = CLLocationCoordinate2D(latitude: 32.7767, longitude: -96.7970)
    static var philadelphia = CLLocationCoordinate2D(latitude: 39.9526, longitude: -75.1652)
    static var madrid = CLLocationCoordinate2D(latitude: 40.4168, longitude: -3.7038)
    static var barcelona = CLLocationCoordinate2D(latitude: 41.3851, longitude: 2.1734)
    static var rome = CLLocationCoordinate2D(latitude: 41.9028, longitude: 12.4964)
    static var milan = CLLocationCoordinate2D(latitude: 45.4642, longitude: 9.1900)
    static var berlin = CLLocationCoordinate2D(latitude: 52.5200, longitude: 13.4050)
    static var munich = CLLocationCoordinate2D(latitude: 48.1351, longitude: 11.5820)
    static var amsterdam = CLLocationCoordinate2D(latitude: 52.3676, longitude: 4.9041)
    static var brussels = CLLocationCoordinate2D(latitude: 50.8503, longitude: 4.3517)
    static var vienna = CLLocationCoordinate2D(latitude: 48.2082, longitude: 16.3738)
    static var zurich = CLLocationCoordinate2D(latitude: 47.3769, longitude: 8.5417)
    static var stockholm = CLLocationCoordinate2D(latitude: 59.3293, longitude: 18.0686)
    static var copenhagen = CLLocationCoordinate2D(latitude: 55.6761, longitude: 12.5683)
    static var helsinki = CLLocationCoordinate2D(latitude: 60.1695, longitude: 24.9354)
    static var oslo = CLLocationCoordinate2D(latitude: 59.9139, longitude: 10.7522)
    static var lisbon = CLLocationCoordinate2D(latitude: 38.7223, longitude: -9.1393)
    static var athens = CLLocationCoordinate2D(latitude: 37.9838, longitude: 23.7275)
    
    static func coordinates(for city: String) -> CLLocationCoordinate2D? {
        switch city {
        case "Los Angeles": return .losAngeles
        case "Aspen": return .aspen
        case "New York": return .newYork
        case "San Francisco": return .sanFrancisco
        case "Miami": return .miami
        case "Las Vegas": return .lasVegas
        case "London": return .london
        case "Paris": return .paris
        case "Tokyo": return .tokyo
        case "Beijing": return .beijing
        case "Shanghai": return .shanghai
        case "Dubai": return .dubai
        case "Hong Kong": return .hongKong
        case "Singapore": return .singapore
        case "Sydney": return .sydney
        case "Moscow": return .moscow
        case "Istanbul": return .istanbul
        case "Bangkok": return .bangkok
        case "Delhi": return .delhi
        case "Seoul": return .seoul
        case "Mumbai": return .mumbai
        case "Mexico City": return .mexicoCity
        case "São Paulo": return .saoPaulo
        case "Buenos Aires": return .buenosAires
        case "Rio de Janeiro": return .rioDeJaneiro
        case "Cairo": return .cairo
        case "Cape Town": return .capeTown
        case "Johannesburg": return .johannesburg
        case "Toronto": return .toronto
        case "Vancouver": return .vancouver
        case "Montreal": return .montreal
        case "Chicago": return .chicago
        case "Boston": return .boston
        case "Atlanta": return .atlanta
        case "Houston": return .houston
        case "Washington, D.C.": return .washingtonDC
        case "Seattle": return .seattle
        case "San Diego": return .sanDiego
        case "Dallas": return .dallas
        case "Philadelphia": return .philadelphia
        case "Madrid": return .madrid
        case "Barcelona": return .barcelona
        case "Rome": return .rome
        case "Milan": return .milan
        case "Berlin": return .berlin
        case "Munich": return .munich
        case "Amsterdam": return .amsterdam
        case "Brussels": return .brussels
        case "Vienna": return .vienna
        case "Zurich": return .zurich
        case "Stockholm": return .stockholm
        case "Copenhagen": return .copenhagen
        case "Helsinki": return .helsinki
        case "Oslo": return .oslo
        case "Lisbon": return .lisbon
        case "Athens": return .athens
        default: return nil
        }
    }
}

