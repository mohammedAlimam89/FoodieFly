# Business Logic & State Management: FoodieFly

This document details the core business rules, data models, and state management algorithms for the application.

---

## 1. Data Models

### Food Item
- **Properties:** Name, description, base price, image path, category, and an array of available `Addon` objects.

### Addon
- **Properties:** Name, additional price.

### Cart Item
- **Properties:** A `Food` object, a list of selected `Addon` objects, and quantity.

---

## 2. State Management (Provider)

The application uses `ChangeNotifier` to manage local state.

### Cart Management Logic
- **Adding Items:** When an item is added, the system checks if an *identical* item (same food + exact same add-ons) already exists in the cart.
  - If yes, it increments the quantity of the existing `CartItem`.
  - If no, it creates a new `CartItem` entry. (This is crucial: the same burger with extra cheese is tracked separately from the same burger without extra cheese).
- **Removing Items:** Decrements the quantity. If the quantity reaches zero, the `CartItem` is removed from the cart entirely.
- **Price Calculation:** Iterates through the cart, summing `(base price + sum of add-ons) * quantity` for each item.

### Theme Toggling Logic
Controlled by a `ThemeProvider` that extends `ChangeNotifier`.

```dart
// ThemeProvider class to handle light/dark mode switching
class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightMode;
  ThemeData get themeData => _themeData;

  void toggleTheme() {
    if (_themeData == lightMode) {
      _themeData = darkMode;
    } else {
      _themeData = lightMode;
    }
    notifyListeners();
  }
}
```

---

## 3. Receipt Generation

The `Restaurant` provider contains logic to convert the current cart state into a formatted text string that simulates a printed receipt.

### Formatted Receipt Generator

```dart
// Generates a text summary of the cart to display as a receipt
String displayCartReceipt() {
  final receipt = StringBuffer();
  receipt.writeln("Here's your receipt.");
  receipt.writeln(DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now()));
  receipt.writeln("----------");

  for (final item in _cart) {
    receipt.writeln("${item.quantity} x ${item.food.name} - ${_formatPrice(item.food.price)}");
    if (item.selectedAddons.isNotEmpty) {
      receipt.writeln("  Add-ons: ${_formatAddons(item.selectedAddons)}");
    }
  }

  receipt.writeln("----------");
  receipt.writeln("Total Items: ${getTotalItemCount()}");
  receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

  return receipt.toString();
}
```
