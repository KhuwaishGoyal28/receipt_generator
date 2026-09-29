# Receipt Generator

> A Flutter app for creating transport (bilty) receipts: enter consignment and charge details, sign on screen, and export a printable PDF.

[![Live Demo](https://img.shields.io/badge/Live%20Demo-Open-2ea44f?style=for-the-badge&logo=vercel)](https://receipt-generator-web-three.vercel.app)

**Live demo:** https://receipt-generator-web-three.vercel.app

## Features
- **Login & registration** screens
- **Receipt form** – sender, receiver, from/to, truck number, bill number, owner, weight, rate and money fields
- **Product rows** – add and delete product line items
- **Charges** – bilty, labour, fork, bridge and merchant expenses
- **Signature pad** – draw and save a signature to place on the receipt
- **PDF preview & print** – generate the receipt as a PDF and preview, print or share it

## Tech Stack
- Flutter / Dart
- [`pdf`](https://pub.dev/packages/pdf) and [`printing`](https://pub.dev/packages/printing) for PDF generation and preview
- [`signature`](https://pub.dev/packages/signature) for the signature pad

## Project Structure
```
lib/
├── main.dart
├── authenication/   # login.dart, register.dart, mock_auth.dart
├── colors/          # color.dart
└── layouts/         # home.dart, productDetails.dart, signaturePad.dart, preview_page.dart, bill_data_model.dart
assets/              # form icons and images
web/                 # Flutter web shell
```

## Getting Started
```bash
flutter pub get
flutter run            # Android / iOS / desktop
flutter run -d chrome  # web
```
Build for web: `flutter build web` (output in `build/web`).

> **Note:** The web demo uses a local mock authentication service (`mock_auth.dart`) instead of Firebase Auth, so no Firebase project is needed. Register an account in the demo first, then log in.

## Author

**Khuwaish Goyal**
- Portfolio: https://khuwaish-portfolio.vercel.app
- LinkedIn: https://www.linkedin.com/in/khuwaishgoyal
- GitHub: https://github.com/KhuwaishGoyal28
