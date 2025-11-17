import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokebox/domain/utils/helper.dart';
import 'package:pokebox/domain/utils/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: getCrossAxisCount(context),
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return const PokeCard();
          },
        ),
      ),
    );
  }

  int getCrossAxisCount(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width < 600) return 2; // phones
    if (width < 900) return 3; // tablets
    if (width < 1200) return 4; // small desktop
    return 5; // large desktop screens
  }
}


class PokeCard extends StatelessWidget {
  const PokeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient:  generateSingleColorGradient(),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.network(
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png",
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 8),
           Text(
            "Pikachu",
            style: context.titleLarge.safeCopy(fontWeight: .bold),
          ),
          const SizedBox(height: 4),
           Text(
            "#25",
            style: context.labelMedium,
          ),
        ],
      ),
    );
  }
}

