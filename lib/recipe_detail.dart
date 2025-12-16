import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hwrecipes/model/recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({super.key, required this.recipe});

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  double _sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.recipe.imgTitle)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                widget.recipe.imgUrl,
                width: double.infinity,
                height: 240,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  width: double.infinity,
                  height: 240,
                  color: Colors.grey[200],
                  child: const Icon(
                    Icons.broken_image,
                    size: 48,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    widget.recipe.detail,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.oswald(fontSize: 16, height: 1.4),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 12.0,
                    ),
                    child: Text(
                      '${ingredient.quantity * _sliderValue} ${ingredient.unit} ${ingredient.name}',
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  );
                },
              ),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              value: _sliderValue,
              label: _sliderValue.round().toString(),
              onChanged: (newValue) {
                setState(() {
                  _sliderValue = newValue.roundToDouble();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
