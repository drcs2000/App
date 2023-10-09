# Image Library App

## Overview

The Image Library App is a mobile application designed to manage and organize a collection of images. Users can log in, register, explore a landing page showcasing images, view them in detail, and perform actions such as adding or deleting images.

## Features

### Login Page

The login page provides a secure entry point for registered users. Users can enter their credentials (username and password) to access the app's features. Invalid login attempts are handled with appropriate feedback to the user. Upon successful login, users are directed to the landing page.

### Register Page

New users can create an account through the register page. The registration process typically involves providing a username, password, and additional information. Password strength requirements and username availability checks enhance the user experience. After successful registration, users are redirected to the login page to access the app.

### Landing Page

The landing page serves as the main hub for users after logging in. Here, users can discover a collection of images displayed in a visually appealing grid. Each image is accompanied by a thumbnail preview. Users can click on any image to view it in more detail.

### Image Detail View

Upon clicking an image on the landing page, users are taken to a detailed view. This view provides a larger rendition of the selected image, allowing users to examine it more closely. The transition between the landing page and the detail view is animated using the Hero widget, providing a smooth and visually appealing user experience.

### Image Management

Users have the ability to manage their image collection by adding or deleting images. Adding images can be achieved through an intuitive interface that allows users to upload images from their device. Deleting images involves a confirmation step to prevent accidental deletions.

## Technologies Used

- **Flutter:** The app is developed using the Flutter framework, allowing for a consistent and responsive user interface across both iOS and Android platforms.
  
- **Dart:** The programming language used for building the app's logic.

- **Firebase Authentication:** Handles user authentication, providing a secure and reliable login and registration process.

- **Firebase Storage:** Manages the storage of user-uploaded images.

- **Hero Widget:** Used for smooth transitions between the landing page and the detailed image view.

## Getting Started

To run the Image Library App locally, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/app.git
   ```

2. Navigate to the project directory:

   ```bash
   cd app
   ```

3. Install dependencies:

   ```bash
   flutter pub get
   ```

4. Run the app:

   ```bash
   flutter run
   ```

Ensure you have Flutter and Dart installed on your development environment. Additionally, make sure to configure Firebase for authentication and storage.

## Contributing

Contributions to the Image Library App are welcome! Feel free to submit bug reports, feature requests, or pull requests to help improve the application.

## License

This project is licensed under the [MIT License](LICENSE).
