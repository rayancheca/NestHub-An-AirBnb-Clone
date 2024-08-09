//
//  CircularProfileImageView.swift
//  ab&b
//
//  Created by Rayan Karim checa on 8/4/24.
//

import SwiftUI

enum ProfileImageSize {
    case xxSmall
    case xSmall
    case small
    case medium
    case large
    case xLarge
    
    var dimension: CGFloat {
        switch self {
        case .xxSmall: return 28
        case .xSmall: return 32
        case .small: return 40
        case .medium: return 48
        case .large: return 64
        case .xLarge: return 80
        }
    }
}
struct CircularProfileImageView: View 
{
    var imageUrl: String?
    var size: ProfileImageSize
    
    var body: some View 
    {
        if let imageUrl
        {
            Image(imageUrl)
                .resizable()
                .scaledToFill()
                .frame(width: size.dimension, height: size.dimension)
                .clipShape(Circle())
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: size.dimension, height: size.dimension)
                .foregroundStyle(Color(.systemGray5))
        }
    }
}

#Preview 
{
    CircularProfileImageView(size: .medium)
}
