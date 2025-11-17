import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokebox/domain/utils/helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _pokeList());
  }


  Widget _pokeList() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: 10,
      itemBuilder: (context, index) {
        return PokeCard();
      });
}

}

class PokeCard extends StatelessWidget {
  const PokeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: .all(.circular(12)),
          gradient: generateSingleColorGradient()
        ),
        child: Column(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image.network(
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png",
              ),
            ),
            Text("Pikachu", style: TextStyle(fontSize: 18, fontWeight: .bold)),
            SizedBox(height: 10),
            Text("#25", style: TextStyle(fontSize: 12, fontWeight: .bold,
            )),
          ],
        ),
      ),
    );
  }
}
