https://github.com/user-attachments/assets/a0fe299d-17b1-420c-acac-13e8fe569d3e

# 🚗 Car Rental App - Flutter (Clean Architecture)

A scalable **Flutter application** built with Clean Architecture principles, using **Firebase Firestore**

---

## 🎯 Overview

This project demonstrates a complete mobile car rental application following **Clean Architecture**, emphasizing:

- ✅ **Modular Structure** – Designed to scale and evolve with growing features  
- ✅ **Separation of Concerns** – Each layer has a clearly defined responsibility  
- ✅ **Maintainable Codebase** – Uses **BLoC** and **GetIt** for clean logic separation  
- ✅ **Cloud-Based Backend** – Firebase Firestore used for real-time data management  

---

## 🏗️ Architecture

This app follows **Clean Architecture** with a 3-layered approach:

### 📦 Layer Breakdown

- **Presentation Layer**  
  Flutter UI widgets and pages, integrated with BLoC for state management.

- **Domain Layer**  
  Core business logic – includes entities, use cases, and abstract repositories.

- **Data Layer**  
  Handles data fetching from Firebase Firestore and maps models between layers.

---

## 🛠️ Tech Stack

### 🔹 Frontend (Flutter)

| Tool            | Purpose                            |
|-----------------|------------------------------------|
| **Flutter SDK** | Core UI Framework                  |
| **BLoC**        | State Management (bloc/flutter_bloc) |
| **GetIt**       | Dependency Injection               |
| **flutter_map** | Interactive Map UI                 |
| **latlong2**    | Map coordinates support            |
| **Firebase Core** | Firebase Initialization          |
| **Cloud Firestore** | Realtime NoSQL Database        |

---

## 🚀 Getting Started

Follow these steps to run the Flutter app:

1. **Install dependencies**  
   Run the following command to install all required packages:  
   `flutter pub get`

2. **Run the app**  
   Launch the application using:  
   `flutter run`

## 🚀 You can get the APK file for testing by clicking here: [Download APK](https://github.com/NickSittipon/flutter-car-rental-app-clean-architecture/actions/runs/16696430920)

### How to download:

1. Click the link above.  
2. Scroll down to the **Artifacts** section.  
3. Click the artifact name (`app-release-apk`)
4. The APK file will download.  
5. Install it on your Android device to test.
