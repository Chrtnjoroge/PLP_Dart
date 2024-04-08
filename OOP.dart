// Define an interface
abstract class Recipe {
  // Method to be implemented by classes that implement this interface
  void prepare();
}

// Implement the interface in a class
class CakeRecipe implements Recipe {
  // Override the prepare method from the Recipe interface
  @override
  void prepare() {
    print("Preparing cake batter...");
      print("");
  }
}

// Define a base class with baking methods
class Baking {
  // Preheat the oven to a specified temperature
  void preheatOven(int temperature) {
    print("Preheating oven to $temperature°C");
  }

  // Prepare the baking pan
  void preparePan() {
    print("Preparing baking pan");
  }

  // Mix ingredients for baking
  void mixIngredients() {
    print("Mixing ingredients for baking");
  }

  // Pour batter into the pan
  void pourBatter() {
    print("Pouring batter into pan");
  }

  // Bake at a specified temperature for a specified duration
  void bake(int temperature, int duration) {
    print("Baking at $temperature°C for $duration minutes");
  }

  // Allow the cake to cool
  void cool() {
    print("Allowing the cake to cool");
  }
}

// Create a subclass that overrides the mixIngredients method
class BreadBaking extends Baking {
  // Override the mixIngredients method from the Baking class
  @override
  void mixIngredients() {
    print("Mixing ingredients for bread dough");
  }
}

// Define a class to represent your baking data entity
class BakingData {
  // The name of the recipe
  String recipeName;

  // The temperature at which to bake
  int temperature;

  // Constructor for the BakingData class
  BakingData(this.recipeName, this.temperature);
}

// Function to initialize baking data
BakingData initializeBakingData() {
  // For demonstration, return a sample baking data
  return BakingData("Chocolate Cake", 350);
}

// Method demonstrating the use of a loop
void bakingLoop() {
  for (var i = 0; i < 3; i++) {
    print("Baking step $i");
  }
}

void main() {
  // Demonstrate your program's features here

  // Demonstrate interface implementation
  var cakeRecipe = CakeRecipe();
  cakeRecipe.prepare();

  // Demonstrate method overriding
  var breadBaking = BreadBaking();
  breadBaking.mixIngredients();

  // Initialize baking data
  var bakingData = initializeBakingData();
  print("Initialized baking data: ${bakingData.recipeName}, ${bakingData.temperature}");

  // Start baking process
  var baking = Baking();
  baking.preheatOven(bakingData.temperature);
  baking.preparePan();
  baking.mixIngredients();
  baking.pourBatter();
  baking.bake(bakingData.temperature, 30); // Baking for 30 minutes
  baking.cool();

  // Add a line break after baking process
  print("");
  print("THE LOP CREATED");

  // Demonstrate the use of a loop
  bakingLoop();
}