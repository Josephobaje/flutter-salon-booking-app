# GlamBook NG Salon App

![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart&logoColor=white)
![Tests](https://img.shields.io/badge/tests-4%20passing-brightgreen)
![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)

**GlamBook NG** is a Flutter portfolio demo by Joseph Obaje. Salon and barbershop booking with services, stylists, time slots, deposit placeholder and reminders. It runs standalone with built-in mock Nigerian data — no server, account, API key or real money is involved. Prices are shown in Naira (₦) where relevant. Payment steps, where shown, are test-mode placeholders only.

![GlamBook NG](docs/hero.png)

## Features

- Services and prices
- Stylist selection
- Booking time slots
- Deposit and reminders
- Material 3 navy and cyan UI that works on Android, iOS and web
- Business logic kept in `lib/logic.dart` and covered by tests

## Tech stack

Flutter 3, Dart 3, Material 3 (no third-party packages required)

## Getting started

```bash
git clone https://github.com/Josephobaje/flutter-salon-booking-app.git
cd flutter-salon-booking-app
flutter pub get
flutter run
flutter analyze
flutter test
```

## Project structure

```text
lib/
  main.dart    # app, theme and screens
  logic.dart   # models, demo seed data and business rules
test/
  logic_test.dart
  widget_test.dart
docs/hero.png  # 1600x1000 portfolio image
screenshots/hero.png
```

## Going live

Use this demo as the front end for a real system: persist data with a local database or your REST API, add authenticated roles, and move payments to a server-verified gateway (for example Paystack) so secrets never ship in the app.

## Author

**Joseph Obaje**, Full Stack Developer (PHP, Python, Flutter) and Cybersecurity Specialist

- GitHub: [@Josephobaje](https://github.com/Josephobaje)
- LinkedIn: [joseph-obaje](https://www.linkedin.com/in/joseph-obaje)
- Email: [josephobaje264@gmail.com](mailto:josephobaje264@gmail.com)

## License

Released under the [MIT License](LICENSE). © 2026 Joseph Obaje
