# Flutter Food Delivery UI

A high-fidelity food delivery application template featuring dynamic theming, a categorized menu, and a robust local cart system with item customization.

---

## Overview

- **Problem solved:** Provides a template for building complex, multi-page e-commerce UIs in Flutter, focusing on layout, state management, and user interaction.
- **Target user:** Developers looking to learn advanced Flutter UI techniques like slivers, tab bars, and local state management using Provider.
- **Value proposition:** A clean, maintainable codebase that handles complex data structures (food items with add-ons) and provides a responsive, themed user experience.

---

## Tech Stack

- **Frontend:** Flutter
- **State Management:** Provider
- **Iconography:** Cupertino (iOS style icons)
- **Dependencies:**
  - `provider` — theme switching and cart state
  - `flutter_credit_card` — interactive payment form UI
  - `collection` — comparing lists of add-ons in cart logic
  - `intl` — formatting dates and currency

---

## Features

- **Light & Dark Mode** — Full app theming controlled by a `ThemeProvider`.
- **Dynamic Sliver UI** — Homepage with a collapsing `SliverAppBar` and integrated `TabBar`.
- **Categorized Menu** — Food items automatically filtered and displayed by category (Burgers, Salads, etc.).
- **Food Customization** — Details page where users select multiple add-ons with real-time price calculation.
- **Local Cart Management** — Add/remove items, update quantities, and handle identical items with different add-ons as unique entries.
- **Receipt Generation** — Logic to convert the current cart into a formatted text-based receipt string.
- **Delivery Rider UI** — Specialized tracking screen with a custom bottom navigation bar for driver details.

---

## Screens / Pages
*Please refer to `layout.md` for detailed UI element specifications and layout structures for each page.*

---

## Database Schema

> **Not Applicable.** This version uses local state management via `ChangeNotifier` and `Provider`. No persistent database is used.

---

## API Endpoints / Functions

> **Not Applicable.** All data is stored in local models within `lib/models/`.

---

## Authentication Flow

> **Not Applicable.** The app leads directly to the Home Page. No login or registration system is implemented.

---

## Step-by-Step Implementation Plan

1. **Core Setup** — Initialize a new Flutter project and set up the folder structure (`pages`, `components`, `models`, `themes`).
2. **Asset Generation** — Generate high-quality food images using AI, place them in `assets/images/`, and register them in `pubspec.yaml`.
3. **Theme Management** — Create `ThemeData` for light/dark modes and a `ThemeProvider` class using `ChangeNotifier`.
4. **Data Models** — Define the `Food`, `Addon`, and `CartItem` classes.
5. **Restaurant Logic** — Build the `Restaurant` provider to hold the menu list and handle cart operations (`addToCart`, `removeFromCart`).
6. **App Shell** — Create the `HomePage` with a `NestedScrollView` and `SliverAppBar`.
7. **Navigation UI** — Implement the `MyDrawer` component and its associated tiles.
8. **Menu Display** — Build the `TabBar` logic to filter food items by category.
9. **Food Interaction** — Design the `MyFoodTile` and the `FoodPage` for customization.
10. **Cart System** — Build the `CartPage` and the `QuantitySelector` component.
11. **Payment UI** — Implement the `PaymentPage` using the `flutter_credit_card` package.
12. **Receipt Logic** — Create a helper function in the `Restaurant` class to generate a string summary of the cart.
13. **Final UI** — Build the `DeliveryProgressPage` with the receipt display and driver info.

---

## Core Logic
*Please refer to `logic.md` for detailed business rules, cart state management, theme logic, and key code snippets.*

---

## Important Notes

- **Local State Only** — Refreshing the app will clear the cart and reset the theme unless a local persistence package like `shared_preferences` or `hive` is added.
- **Asset Management** — Ensure all food images are placed in `assets/images/` and correctly registered in the `pubspec.yaml` file.
- **UI Performance** — Wrap specific text or buttons in `Consumer` widgets rather than rebuilding the whole page to keep the UI smooth.
