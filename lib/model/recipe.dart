import 'package:hwrecipes/model/ingredients.dart';

class Recipe {
  String imgUrl;
  String imgTitle;
  String detail;
  List<Ingredient> ingredients;

  //constructor
  Recipe(this.imgUrl, this.imgTitle, this.detail, this.ingredients);

  static List<Recipe> samples = [
    Recipe(
      'assets/images/200304_Olive_PadThai-ebe0f22-scaled.webp',
      'Pad Thai',
      'Put juicy king prawns to work in our version of this classic Thai dish, full of vibrant flavours and ready in half an hour.',
      [
        Ingredient(name: 'dried flat rice noodles', quantity: 150, unit: 'g'),
        Ingredient(name: 'groundnut oil', quantity: 2, unit: 'tbsp'),
        Ingredient(name: 'echalion shallots', quantity: 2, unit: ''),
        Ingredient(name: 'raw peeled king prawns', quantity: 200, unit: 'g'),
        Ingredient(name: 'egg', quantity: 1, unit: ''),
        Ingredient(name: 'hot chilli powder', quantity: 1/2, unit: 'tsp'),
        Ingredient(name: 'beansprouts', quantity: 1, unit: 'handful'),
        Ingredient(name: 'chives', quantity: 1, unit: 'handful'),
        Ingredient(name: 'roasted peanuts', quantity: 2, unit: 'tbsp'),
        Ingredient(name: 'lime wedges', quantity: 1, unit: ''),
        Ingredient(name: 'tamarind paste', quantity: 1, unit: 'tbsp'),
        Ingredient(name: 'fish sauce', quantity: 2, unit: 'tbsp'),
        Ingredient(name: 'palm sugar or soft light brown sugar', quantity: 1, unit: 'tbsp'),
      ],
    ),
    Recipe(
      'assets/images/OLI-0519-Healthy_GreenThaiFishCurry_32208-c3cee9a.webp',
      'Green Thai Fish Curry',
      'Perk up your midweek meal with flaky chunks of fish cooked in creamy coconut milk and mild Thai green curry paste, ready in just 10 minutes.',
      [
        Ingredient(name: 'Thai green curry paste', quantity: 2, unit: 'tbsp'),
        Ingredient(name: 'tin coconut milk', quantity: 400, unit: 'g'),
        Ingredient(name: 'sugar snap peas', quantity: 200, unit: 'g'),
        Ingredient(name: 'skinless fish fillet', quantity: 400, unit: 'g'),
        Ingredient(name: 'fish sauce', quantity: 1, unit: 'ml'),
        Ingredient(name: 'red chilli', quantity: 1, unit: 'tbsp'),
        Ingredient(name: 'coriander leaves', quantity: 1, unit: 'handful'),
        Ingredient(name: 'rice', quantity: 1, unit: 'cups'),
      ],
    ),
    Recipe(
      'assets/images/p110-20250121rps2352pumpkincurrypreview-8534543.webp',
      'Pumpkin Curry',
      'Make the most of seasonal pumpkins or butternut squash in this Thai curry, flavoured with dill, fish sauce and homemade red and green chilli paste.',
      [
        Ingredient(name: 'vegetable stock', quantity: 1, unit: 'litre'),
        Ingredient(name: 'butternut squash', quantity: 500-600, unit: 'g'),
        Ingredient(name: 'fine green beans', quantity: 100, unit: 'g'),
        Ingredient(name: 'baby corn', quantity: 100, unit: 'g'),
        Ingredient(name: 'onions', quantity: 2, unit: ''),
        Ingredient(name: 'courgette', quantity: 1, unit: ''),
        Ingredient(name: 'fish sauce', quantity: 4, unit: 'tbsp'),
        Ingredient(name: 'dill', quantity: 1, unit: 'handful'),
        Ingredient(name: 'steamed jasmine rice', quantity: 1, unit: 'cups'),
        Ingredient(name: 'large hot red chillies', quantity: 2, unit: ''),
        Ingredient(name: 'large green chillies', quantity: 2, unit: ''),
        Ingredient(name: 'garlic cloves', quantity: 4, unit: ''),
        Ingredient(name: 'small shallots', quantity: 2, unit: ''),
        Ingredient(name: 'shrimp paste', quantity: 2, unit: 'tsp'),
      ],
    ),
    Recipe(
      'assets/images/p133-20250121rps2352northernlarbpreview-1-0ac4d35.webp',
      'Northern Larb',
      'A spicy Thai jungle curry made with aubergine, herbs, and aromatic spices.It features a light broth with strong flavors and no coconut milk',
      [
        Ingredient(name: 'Aubergines', quantity: 2, unit: ''),
        Ingredient(name: 'Jungle curry paste', quantity: 2, unit: 'tbsp'),
        Ingredient(name: 'Vegetable stock', quantity: 2, unit: 'cups'),
        Ingredient(name: 'Kaffir lime leaves', quantity: 3, unit: ''),
        Ingredient(name: 'Thai chilies', quantity: 2, unit: ''),
        Ingredient(name: 'Fish sauce', quantity: 1, unit: 'tbsp'),
        Ingredient(name: 'Thai basil', quantity: 1, unit: 'handful'),
      ],
    ),
  ];
}