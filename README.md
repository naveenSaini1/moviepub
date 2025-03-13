# MoviePub

MoviePub is a web application designed to help users explore and download movies for Free. It provides an intuitive interface for browsing movies, viewing detailed information, and searching for specific films. and there is admin secton where the admin can upload moives and see the download counts and much like adding year languages and so on

## Screenshots

The Under belove following images illustrate the MoviePub application:

1. **Homepage** - Displays a collection of featured movies with a visually appealing layout.
2. **Movie Details Page** - Shows comprehensive details about a selected movie, including synopsis, cast, and more.
3. **Search Results Page** - Presents movies that match the search criteria entered by the user.
4. **Responsive UI** - Demonstrates how the app adapts to different screen sizes, ensuring a seamless user experience.
5. **Admin Page**- updaing the movies and changing the details and adding the years or seeing the users requests

## Features

### User Features
- Browse a vast collection of movies.
- Search for specific movies using keywords.
- View detailed information, including synopsis, cast, and release year.
- Responsive design for an optimal experience on all devices.

### Admin Features
- **Movie Management:** Admins can upload new movies, update details, and categorize them based on collections, years, platforms, and languages.
- **User Requests:** Admins can view user requests for movies they want to be added and prioritize uploads accordingly.
- **Download Insights:** Admins can track the number of times a movie has been downloaded or accessed.
- **Content Updates:** Movies and their metadata can be updated as needed to keep the library fresh and relevant.
- **User Management:** Admins can monitor and manage users who interact with the platform.
- **Advanced Filtering:** Sort and filter movies by platform, language, and genre for easy content organization.
- **Security & Permissions:** Manage access control to prevent unauthorized changes.

## Installation Guide

Follow these steps to set up MoviePub on your local machine:

### Prerequisites

- Java (JDK 11 or higher)
- Node.js (version 14 or higher) and npm
- Postgres Database

### Backend Setup

#### And for fast Deploy use 
```sh
sudo ./deploy.sh
```
### Manual Installantion 

```sh
# Clone the repository
git clone https://github.com/naveenSaini1/moviepub.git
cd moviepub

# Configure database settings in `src/main/resources/application.properties`
spring.datasource.url=jdbc:mysql://localhost:3306/moviepub
spring.datasource.username=your_username
spring.datasource.password=your_password

# Build and run the backend
./mvnw clean install
./mvnw spring-boot:run
```

### Frontend Setup

```sh
# Navigate to the frontend directory
cd frontend

# Install dependencies
npm install

# Start the frontend server
npm run dev
```


The application will be available at `http://localhost:3000`.

## Admin Details

The application includes an admin panel for managing movies, users, and reviews.

### Default Admin Credentials

- **Username:** `admin`
- **Password:** `admin123`

To change the admin credentials, update the database manually or implement a user management system.

## Contributing

```sh
# Fork the repository
# Create a new branch
git checkout -b feature-name

# Make your changes and commit
git commit -m "Description of changes"

# Push to your fork
git push origin feature-name

# Open a pull request
```

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
feel free to cntribute


## Screenshots
![image](https://github.com/user-attachments/assets/37f3acdc-03bf-499c-819b-16116ce52f78)
![image](https://github.com/user-attachments/assets/67756d40-3253-4ba7-92d2-9d9cc6708311)
![image](https://github.com/user-attachments/assets/947ea6fd-4b1b-40eb-866c-5f10e4141d19)
![image](https://github.com/user-attachments/assets/de414b2e-9117-42bf-8786-3aa85f17d76a)
![image](https://github.com/user-attachments/assets/9ac45821-29ab-4ab5-80aa-8930229d4334)
![image](https://github.com/user-attachments/assets/5adbad62-7ce9-420b-854b-e0a4c46fb89f)
![image](https://github.com/user-attachments/assets/ea515dfd-6d55-457e-8aa1-2730a9aa18d3)
![image](https://github.com/user-attachments/assets/87eb3dad-3aa6-4b83-b55c-2215f3e92c49)
![image](https://github.com/user-attachments/assets/558af2db-a6f0-4169-9a25-57044dff594c)
![image](https://github.com/user-attachments/assets/0413f374-c326-4969-a993-7708cea6b23f)
![image](https://github.com/user-attachments/assets/58ae8a8e-2ccb-4c51-8a91-0ed21742a7a5)
![image](https://github.com/user-attachments/assets/aae2093d-51d4-4cbb-bca9-ccec1d75edd8)
![image](https://github.com/user-attachments/assets/a6ea0651-2822-426c-8cce-832001f40631)
![image](https://github.com/user-attachments/assets/5e8b9085-9007-4279-a8ed-95bf9fe781a3)
![image](https://github.com/user-attachments/assets/86d1a167-76e4-49c3-a2cd-2244ab0722b5)












