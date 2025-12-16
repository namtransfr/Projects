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
      'Put juicy king prawns to work in our version of this classic Thai dish, full of vibrant flavours and ready in half an hour.',[]
    ),
    Recipe(
      'assets/images/OLI-0519-Healthy_GreenThaiFishCurry_32208-c3cee9a.webp',
      'Green Thai Fish Curry',
      'Perk up your midweek meal with flaky chunks of fish cooked in creamy coconut milk and mild Thai green curry paste, ready in just 10 minutes.',
      [
      ],
    ),
    Recipe(
      'assets/images/p110-20250121rps2352pumpkincurrypreview-8534543.webp',
      'Pumpkin Curry',
      'Make the most of seasonal pumpkins or butternut squash in this Thai curry, flavoured with dill, fish sauce and homemade red and green chilli paste.',
      [
      ],
    ),
    Recipe(
      'assets/images/p133-20250121rps2352northernlarbpreview-1-0ac4d35.webp',
      'Northern Larb',
      'A spicy Thai jungle curry made with aubergine, herbs, and aromatic spices.It features a light broth with strong flavors and no coconut milk',
      [
      ],
    ),
  ];
}