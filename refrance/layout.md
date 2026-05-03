# UI/UX & Layout Specification: FoodieFly

This document outlines the visual design, component architecture, and user experience patterns for the FoodieFly delivery application.

---

## 1. Design System & Aesthetics

### Visual Style
- **Theme:** Modern, high-fidelity aesthetic.
- **Visual Elements:** 
    - Rounded corners (border radius) for cards and buttons.
    - Smooth gradients for primary buttons and headers.
    - Vibrant, curated color palettes for food categories.
    - Hero animations for seamless transitions between menu and details.
- **Iconography:** A hybrid of `Cupertino` (iOS-style) for a premium feel and standard Material icons where appropriate.

### Dynamic Theming
- **Light Mode:** Clean white backgrounds with soft shadows.
- **Dark Mode:** Deep grey/black backgrounds with high-contrast text and vibrant accents.
- **Interaction:** A `CupertinoSwitch` in settings to toggle the global `ThemeProvider`.

---

## 2. Common Layout Components

### Global App Shell
- **Drawer:** Custom sidebar containing navigation links (Home, Settings) and user profile info.
- **Bottom Bar:** Specialized driver info bar on the tracking screen.

### Reusable UI Components
- **MyFoodTile:** A card-based layout for the menu list including food name, price, and a small thumbnail.
- **MyQuantitySelector:** A compact +/- control with a central quantity digit.
- **MyCartTile:** A list item layout for the cart, showing selected add-ons in a sub-list.
- **MyButton:** A standardized, premium-styled button used for "Add to Cart" and "Checkout."

---

## 3. Page-Specific Layouts

### Home Page (The Menu Hub)
- **Structure:** `NestedScrollView` with a `SliverAppBar`.
- **Top Section:** A `SliverAppBar` that collapses as the user scrolls, showing the current location and delivery address.
- **Navigation:** Integrated `TabBar` fixed below the app bar to switch categories (Burgers, Salads, etc.).
- **Content:** A scrollable list of `FoodTile` widgets filtered by the active tab.

### Food Details Page (Customization)
- **Structure:** Large hero image at the top followed by a scrollable body.
- **Body:** 
    - Food name and description.
    - A list of `CheckboxListTile` widgets for add-on selection.
- **Footer:** A sticky "Add to Cart" button that displays the dynamically calculated total price.

### Cart Page (Management)
- **Structure:** A vertical list of `CartTile` widgets.
- **Interactions:** Swipe-to-delete or quantity increment/decrement.
- **Footer:** Summary section showing the subtotal and a "Checkout" button.

### Payment & Tracking (Simulation)
- **Payment:** Features a `CreditCardForm` (using `flutter_credit_card` package).
- **Tracking:** A map-simulated interface with a persistent bottom sheet showing the delivery driver's details and a formatted text receipt.

---

## 4. UX Flows & Interactions

### The Ordering Flow
1. **Browse:** User interacts with the `TabBar` to explore categories.
2. **Select:** Tapping a `FoodTile` triggers a Hero animation to the Details page.
3. **Configure:** User checks/unchecks add-ons; the price in the footer updates instantly.
4. **Cart:** Tapping the cart icon opens a dedicated management screen.
5. **Checkout:** User completes the simulated card form.
6. **Confirmation:** The app displays a "Receipt" summary and transitions to the tracking UI.

### Micro-interactions
- **Theme Switch:** The entire app's color palette swaps instantly without losing the user's scroll position.
- **Add-on Logic:** Selecting an add-on provides immediate visual feedback (checkmark + price change).
- **Sliver Scroll:** The header background fades or shrinks smoothly during scroll.
