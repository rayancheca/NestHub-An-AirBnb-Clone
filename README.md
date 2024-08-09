# NestHub

NestHub is a feature-rich SwiftUI application that mimics the core functionalities of AirBnB. It provides users with the ability to explore listings, manage their profiles, create wishlists, and interact with detailed views of properties, including map previews and image carousels. The app is designed with a modular architecture, integrating Firebase for backend services, and is built to be scalable and maintainable.

## Features

- **User Authentication**: Supports registration, login, and logout using Firebase Authentication.
- **Profile Management**: Users can view and edit their profiles, including changing profile pictures.
- **Explore Listings**: Users can browse through a variety of listings, search for specific destinations, and filter results.
- **Wishlist**: Allows users to add listings to their wishlist and view them later.
- **Interactive Maps**: Displays map previews and full interactive maps for property locations.
- **Custom UI Components**: Includes a variety of custom SwiftUI components like image carousels, custom buttons, and text fields.
- **Modular Architecture**: Organized codebase that separates concerns into services, view models, and views, making it easy to extend and maintain.

## Screenshots

![App Screenshot](link-to-screenshot)  
*(Replace with actual screenshots)*

## Getting Started

### Prerequisites

- Xcode 12 or later
- iOS 14.0 or later
- Swift Package Manager or CocoaPods (for dependency management)
- A Firebase project for backend integration

### Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/NestHub.git
   cd NestHub

   Open the project in Xcode:

   ```bash
   open NestHub.xcodeproj
   Install dependencies:

   If you are using CocoaPods:

   ```bash
   pod install
   open NestHub.xcworkspace
   If you are using Swift Package Manager, dependencies should resolve automatically when you open the project in Xcode.

### Configure Firebase:

1. Create a new Firebase project at [Firebase Console](https://console.firebase.google.com/).
2. Add an iOS app to your Firebase project and download the `GoogleService-Info.plist` file.
3. Place the `GoogleService-Info.plist` file in the root directory of your Xcode project.
4. Ensure you have Firebase Authentication enabled in your Firebase console.

### Build and run the project:

Select a simulator or a physical device and hit `Cmd + R` to build and run the project.

## Usage

### Authentication
- **Login**: Users can log in with their credentials. The authentication state is managed using `AuthManager`.
- **Registration**: New users can register using the sign-up form, which is validated and processed by the `RegistrationViewModel`.
- **Profile Management**: Once logged in, users can view and edit their profile through the `ProfileView`, with options to change profile pictures and update personal information.

### Explore Listings
- **Browse Listings**: Users can browse through available listings in the `ExploreView`.
- **Search and Filter**: The `SearchAndFilterBar` allows users to search for specific listings or apply filters based on their preferences.
- **View Details**: Tapping on a listing brings up the `ListingDetailView`, which includes an image carousel, map preview, and detailed information about the property.

### Wishlist
- **Adding to Wishlist**: Users can add their favorite listings to a wishlist for easy access later.
- **Viewing Wishlist**: The `WishlistView` displays all saved listings, with a login prompt if the user is not authenticated.
- **Empty State**: The `WishListEmptyStateView` provides feedback when the wishlist is empty, encouraging users to explore more listings.

### Maps
- **Map Previews**: Small map previews are available on the listing cards, showing the approximate location.
- **Interactive Maps**: Users can interact with full-screen maps in the `ListingMapView`, where they can zoom in and explore the area around the property.

## Project Structure

- **`ab_bApp.swift`**: The entry point of the application, setting up initial services and the main view.

### Authentication:
- **`AuthManager.swift`, `AuthServiceProtocol.swift`, `FirebaseAuthService.swift`, `MockAuthService.swift`**: Handle user authentication.
- **`LoginViewModel.swift`, `RegistrationViewModel.swift`**: Manage authentication logic and state.
- **`LoginView.swift`, `RegistrationView.swift`**: UI for user login and registration.

### Profile:
- **`ProfileView.swift`, `UserProfileHeaderView.swift`, `ProfileOptionRowView.swift`**: Manage and display user profile information.

### Listings:
- **`ExploreService.swift`, `ExploreViewModel.swift`, `ExploreView.swift`**: Handle the exploration of listings.
- **`Listing.swift`, `ListingDetailView.swift`, `ListingItemView.swift`**: Data models and views for displaying listings.
- **`ListingImageCarouselView.swift`, `ListingMapPreviewView.swift`, `ListingMapView.swift`**: Custom components for image carousels and maps.

### Wishlist:
- **`WishlistView.swift`, `WishlistsLoginView.swift`, `WishListEmptyStateView.swift`**: Manage and display user wishlists.

### Custom UI Components:
- **`PrimaryButtonModifier.swift`, `PrimaryTextFieldModifier.swift`**: Custom modifiers for consistent UI styling.

### Utilities:
- **`DeveloperPreview.swift`, `Regions.swift`**: Utilities for previewing components and handling region-specific data.

## Contributing

Contributions are welcome! If you have any ideas or improvements, feel free to open an issue or submit a pull request.

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/AmazingFeature`).
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`).
4. Push to the branch (`git push origin feature/AmazingFeature`).
5. Open a pull request.

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Acknowledgments

- [Firebase](https://firebase.google.com/) for providing backend services.
- [SwiftUI](https://developer.apple.com/xcode/swiftui/) for the user interface framework.
- Inspiration from [AirBnB](https://www.airbnb.com/) for the concept.
