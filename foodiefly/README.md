# FoodieFly 🍔🍕🍣

FoodieFly is a premium, beautifully designed food delivery application built with Flutter. It features a modern, clean user interface with sleek animations, a dynamic dark/light mode, and a complete order flow from browsing a menu to checkout and delivery tracking.

## 🌟 Features

- **Premium UI/UX:** Built with modern design principles, vibrant gradients, and glassmorphism elements.
- **Dynamic Theming:** Seamless Light and Dark mode toggle utilizing Material 3 ColorScheme.
- **Interactive Menu:** Browse multiple food categories (Burgers, Salads, Pizzas, Sushi, Drinks) with a sleek TabBar and SliverAppBar.
- **Detailed Item Views:** Hero animations for smooth transitions. Users can customize their food with add-ons that dynamically update the total price.
- **Smart Cart Management:** Built-in deduplication. Adding the same item with identical add-ons increments the quantity. Adjust quantities and clear the cart easily.
- **Interactive Checkout:** A fully integrated, animated credit card UI for payment processing using `flutter_credit_card`.
- **Delivery Tracking:** An engaging, animated progress page that simulates the delivery journey ("Preparing Food", "On The Way", "Delivered") and includes a receipt generator.
- **Cross-Platform:** Configured to run on iOS, Android, Web, and Windows desktop.

## 🛠 Tech Stack

- **Framework:** Flutter (SDK ^3.11.3)
- **State Management:** `provider` (ChangeNotifier for Theme and Restaurant logic)
- **UI Components:** 
  - Custom gradient buttons
  - Material 3 styling
  - `flutter_credit_card` for payment inputs
- **Assets:** High-quality generated food photography.

## 📂 Project Structure

```
lib/
├── components/          # Reusable UI widgets (MyButton, MyFoodTile, MyDrawer, etc.)
├── models/              # Data models (Food, Addon, CartItem, Restaurant state)
├── pages/               # App screens (Home, Food detail, Cart, Payment, Delivery)
├── themes/              # Light/Dark mode definitions and ThemeProvider
└── main.dart            # App entry point
```

## 🚀 Getting Started

1. **Clone the repository** (if applicable).
2. **Install dependencies:**
   ```bash
   flutter pub get
   ```
3. **Run the app:**
   ```bash
   flutter run
   ```

## 🎨 Design

The app uses an energetic primary color `Color(0xFFFF6B35)` paired with carefully selected contrasting background colors for both light and dark modes to provide a high-end feel.

## 🖼️ Assets

The app includes custom, beautifully generated food imagery:
- 🍔 **Burgers**
- 🥗 **Salads**
- 🍕 **Pizza**
- 🍣 **Sushi**
- 🥤 **Drinks**

## 🔮 Next Steps

- **Backend Integration:** Integrate a backend (e.g., Firebase or Supabase) to persist user data, cart state, and order history.
- **Authentication:** Implement user login/sign-up (Auth flow) for personalized profiles.
- **Testing:** Add unit and integration tests for the `Restaurant` provider logic and cart arithmetic.
- **Refinement:** Continue refining the UI, adding more micro-animations, and addressing any future deprecation warnings as the Flutter SDK evolves.
