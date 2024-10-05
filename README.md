# Flutter Photo Gallery with Riverpod State Management

This project is a simple **photo gallery** application built using **Flutter**. It fetches photos from the **Pixabay API** and displays them in a grid view. Each photo includes the **username** of the uploader, the number of **likes**, and the number of **views**. The app uses **Riverpod** for state management, ensuring modular and maintainable code.

## Features

- Displays photos in a grid layout.
- Shows the username above each photo.
- Displays the number of likes and views below each photo.
- Uses the **Pixabay API** to fetch high-quality photos.
- **Riverpod** state management is used to handle asynchronous data fetching.

## Screenshots

![App Screenshot](https://github.com/jeetubhaiya5529/image_gallery_pixabay_api/blob/main/assets/app_screenshot/Screenshot_20241005-132853_image_gallery.png)

![App Screenshot](https://github.com/jeetubhaiya5529/image_gallery_pixabay_api/blob/main/assets/app_screenshot/Screenshot_20241005-132904_image_gallery.png)


## Prerequisites

To run this project, ensure you have the following installed:

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Dart SDK](https://dart.dev/get-dart)
- A code editor like [VSCode](https://code.visualstudio.com/download) or [Android Studio](https://developer.android.com/studio)

## Dependencies

This project uses the following dependencies:

- **http:** To handle the API requests to Pixabay.
- **flutter_riverpod:** To manage state in the app.

Add the dependencies in your pubspec.yaml file:

```bash
dependencies:
  flutter:
    sdk: flutter
  http: ^0.14.0
  flutter_riverpod: ^2.3.0

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/image_gallery_pixabay_api.git

### 2. Install Dependencies

```bash
flutter pub get

### 3. Run the App

```bash
flutter run


## Project Structure

```bash
lib/
│
├── main.dart                 
├── model/model.dart        
├── provider/gallery_provider.dart 
└── service/api_service.dart 
└── screens/gallery_screen.dart

## Riverpod for State Management

The app uses Riverpod to manage the state of the photo gallery:

- photosProvider: A FutureProvider that fetches photo data from the Pixabay API asynchronously and manages the state (loading, success, or error).

- ConsumerWidget: Used in GalleryPage to listen to changes in the provider and rebuild the UI accordingly.

## Customization

You can easily modify this project to:

- Fetch photos of different categories by changing the query parameter in the API call (e.g., flowers, animals, etc.).

- Add more details below each photo like comments or tags.

- Change the grid layout by adjusting the SliverGridDelegateWithFixedCrossAxisCount in gallery_screen.dart.


## Contributing

If you would like to contribute to this project, feel free to create a pull request or submit an issue.

1. Fork the repository.

2. Create a new branch (git checkout -b feature/YourFeature).

3. Commit your changes (git commit -am 'Add Your Feature').

4. Push to the branch (git push origin feature/YourFeature).

5. Create a new Pull Request.


## License

This project is licensed under the MIT License.

## Contact

For any inquiries or suggestions, feel free to reach out to:

Jeetendra Kumar

Email: jeetendrakumar5529@gmail.com