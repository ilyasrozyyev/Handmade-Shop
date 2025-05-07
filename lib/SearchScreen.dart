import 'package:flutter/material.dart';
import 'colors.dart'; 

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bk,
      appBar: AppBar(
        title: const Text("Поиск товаров"),
        backgroundColor:ab
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Введите название товара...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: bk,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                "Здесь будут результаты поиска",
                style: TextStyle(color: te, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}