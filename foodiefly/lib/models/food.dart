// Food categories
enum FoodCategory {
  burgers,
  salads,
  pizzas,
  sushi,
  drinks,
}

// Add-on model
class Addon {
  final String name;
  final double price;

  Addon({required this.name, required this.price});
}

// Food item model
class Food {
  final String name;
  final String description;
  final double price;
  final String imagePath;
  final FoodCategory category;
  final List<Addon> availableAddons;

  Food({
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
    required this.category,
    required this.availableAddons,
  });
}
