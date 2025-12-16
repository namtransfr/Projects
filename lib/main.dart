import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hwrecipes/model/recipe.dart';
import 'package:hwrecipes/recipe_detail.dart';

const primaryColor = Color.fromARGB(255, 255, 213, 0);

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe Calculator',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: primaryColor,

        textTheme: GoogleFonts.oswaldTextTheme(),

        appBarTheme: AppBarTheme(
          backgroundColor: primaryColor,
          centerTitle: true,
          titleTextStyle: GoogleFonts.oswald(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), 
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (context, index) {
            final recipe = Recipe.samples[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => RecipeDetail(recipe: recipe),
                  ),
                );
              },
              child: buildRecipeCard(recipe),
            );
          },
        ),
      ),
    );
  }
}

Widget buildRecipeCard(Recipe recipe) {
  return Card(
    color: Colors.white,
    elevation: 4,
    margin: const EdgeInsets.all(12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            recipe.imgTitle,
            style: GoogleFonts.oswald(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: primaryColor,
            ),
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              recipe.imgUrl,
              width: double.infinity,
              height: 180,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                width: double.infinity,
                height: 180,
                color: Colors.grey[200],
                child: const Icon(Icons.broken_image, size: 48, color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
