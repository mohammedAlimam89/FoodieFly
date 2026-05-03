import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/cart_item.dart';
import '../models/food.dart';

class Restaurant extends ChangeNotifier {
  // --- Menu Data ---
  final List<Food> _menu = [
    // BURGERS
    Food(
      name: 'Classic Smash Burger',
      description: 'Double smash patty with cheddar, pickles, and special sauce on a brioche bun.',
      price: 12.99,
      imagePath: 'assets/images/burger.png',
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Patty', price: 3.50),
        Addon(name: 'Bacon Strips', price: 2.00),
        Addon(name: 'Extra Cheese', price: 1.00),
        Addon(name: 'Jalapeños', price: 0.75),
      ],
    ),
    Food(
      name: 'BBQ Smokehouse Burger',
      description: 'Slow-cooked pulled pork, smoky BBQ sauce, crispy onion rings.',
      price: 14.49,
      imagePath: 'assets/images/burger.png',
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Patty', price: 3.50),
        Addon(name: 'Avocado', price: 1.50),
        Addon(name: 'Fried Egg', price: 1.00),
      ],
    ),
    Food(
      name: 'Mushroom Swiss Burger',
      description: 'Sautéed mushrooms, melted Swiss cheese, garlic aioli, and fresh arugula.',
      price: 13.49,
      imagePath: 'assets/images/burger.png',
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Mushrooms', price: 1.00),
        Addon(name: 'Truffle Sauce', price: 2.00),
        Addon(name: 'Extra Cheese', price: 1.00),
      ],
    ),

    // SALADS
    Food(
      name: 'Avocado Power Bowl',
      description: 'Fresh greens, creamy avocado, cherry tomatoes, quinoa, and lemon tahini dressing.',
      price: 11.99,
      imagePath: 'assets/images/salad.png',
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 3.00),
        Addon(name: 'Extra Avocado', price: 1.50),
        Addon(name: 'Boiled Egg', price: 1.00),
      ],
    ),
    Food(
      name: 'Caesar Supreme',
      description: 'Romaine lettuce, house-made caesar dressing, parmesan crisps, and garlic croutons.',
      price: 10.49,
      imagePath: 'assets/images/salad.png',
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 3.00),
        Addon(name: 'Anchovies', price: 1.00),
        Addon(name: 'Extra Parmesan', price: 0.75),
      ],
    ),

    // PIZZAS
    Food(
      name: 'Pepperoni Inferno',
      description: 'Double pepperoni, mozzarella, spicy marinara, fresh basil on thin crust.',
      price: 15.99,
      imagePath: 'assets/images/pizza.png',
      category: FoodCategory.pizzas,
      availableAddons: [
        Addon(name: 'Extra Pepperoni', price: 2.00),
        Addon(name: 'Stuffed Crust', price: 2.50),
        Addon(name: 'Extra Cheese', price: 1.50),
        Addon(name: 'Chili Flakes', price: 0.50),
      ],
    ),
    Food(
      name: 'Truffle Mushroom',
      description: 'Wild mushrooms, truffle oil, gruyère cheese, fresh thyme on sourdough base.',
      price: 17.49,
      imagePath: 'assets/images/pizza.png',
      category: FoodCategory.pizzas,
      availableAddons: [
        Addon(name: 'Extra Truffle Oil', price: 2.00),
        Addon(name: 'Prosciutto', price: 3.00),
        Addon(name: 'Stuffed Crust', price: 2.50),
      ],
    ),
    Food(
      name: 'Margherita Classic',
      description: 'San Marzano tomatoes, fresh mozzarella, basil, extra virgin olive oil.',
      price: 13.99,
      imagePath: 'assets/images/pizza.png',
      category: FoodCategory.pizzas,
      availableAddons: [
        Addon(name: 'Burrata', price: 3.50),
        Addon(name: 'Anchovies', price: 1.50),
        Addon(name: 'Extra Basil', price: 0.50),
      ],
    ),

    // SUSHI
    Food(
      name: 'Salmon Dragon Roll',
      description: 'Salmon, cream cheese, avocado, wrapped in rice with spicy mayo drizzle.',
      price: 16.99,
      imagePath: 'assets/images/sushi.png',
      category: FoodCategory.sushi,
      availableAddons: [
        Addon(name: 'Extra Spicy Mayo', price: 0.50),
        Addon(name: 'Tobiko', price: 1.50),
        Addon(name: 'Truffle Oil', price: 2.00),
      ],
    ),
    Food(
      name: 'Tuna Tataki',
      description: 'Seared tuna, ponzu sauce, micro greens, sesame seeds, pickled ginger.',
      price: 18.49,
      imagePath: 'assets/images/sushi.png',
      category: FoodCategory.sushi,
      availableAddons: [
        Addon(name: 'Extra Wasabi', price: 0.50),
        Addon(name: 'Yuzu Dressing', price: 1.00),
        Addon(name: 'Edamame Side', price: 2.50),
      ],
    ),

    // DRINKS
    Food(
      name: 'Fresh Lemonade',
      description: 'Hand-squeezed lemons, cane sugar, sparkling water, fresh mint.',
      price: 4.99,
      imagePath: 'assets/images/drink.png',
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Extra Mint', price: 0.25),
        Addon(name: 'Raspberry Syrup', price: 0.75),
        Addon(name: 'Ginger Boost', price: 0.50),
      ],
    ),
    Food(
      name: 'Mango Lassi',
      description: 'Ripe Alphonso mango, creamy yogurt, cardamom, rose water.',
      price: 5.99,
      imagePath: 'assets/images/drink.png',
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Extra Mango', price: 0.75),
        Addon(name: 'Pistachio Topping', price: 1.00),
        Addon(name: 'Honey Drizzle', price: 0.50),
      ],
    ),
  ];

  // --- Cart ---
  final List<CartItem> _cart = [];

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  // Add to cart with smart de-duplication
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? existingItem;

    for (var cartItem in _cart) {
      bool sameFood = cartItem.food == food;
      bool sameAddons = const ListEquality().equals(
        cartItem.selectedAddons,
        selectedAddons,
      );

      if (sameFood && sameAddons) {
        existingItem = cartItem;
        break;
      }
    }

    if (existingItem != null) {
      existingItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  // Remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // Get total price
  double getTotalPrice() {
    double total = 0.0;
    for (var cartItem in _cart) {
      total += cartItem.totalPrice;
    }
    return total;
  }

  // Get total item count
  int getTotalItemCount() {
    int totalCount = 0;
    for (var cartItem in _cart) {
      totalCount += cartItem.quantity;
    }
    return totalCount;
  }

  // Clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // Format currency
  String _formatPrice(double price) {
    return NumberFormat.currency(symbol: '\$').format(price);
  }

  // Format addons
  String _formatAddons(List<Addon> addons) {
    return addons.map((a) => '${a.name} (+${_formatPrice(a.price)})').join(', ');
  }

  // Receipt generator
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln(DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now()));
    receipt.writeln("─────────────────────────");

    for (final item in _cart) {
      receipt.writeln(
          "${item.quantity} x ${item.food.name}  ${_formatPrice(item.food.price)}");
      if (item.selectedAddons.isNotEmpty) {
        receipt.writeln("  Add-ons: ${_formatAddons(item.selectedAddons)}");
      }
    }

    receipt.writeln("─────────────────────────");
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }
}
