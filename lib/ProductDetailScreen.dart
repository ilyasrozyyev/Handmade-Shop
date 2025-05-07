import 'package:flutter/material.dart';
import 'package:my_project/colors.dart';
import 'cart.dart';
import 'product.dart';





class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({required this.product, Key? key}) : super(key: key);

  Widget _buildSimilarProducts(BuildContext context, List<Product>? similarProducts) {
    if (similarProducts == null || similarProducts.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        const Text(
          "Похожие товары",
          style: TextStyle(color: te, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            
            itemCount: similarProducts.length,
            itemBuilder: (context, index) {
              final similarProduct = similarProducts[index];
              return Padding( 
              padding: const EdgeInsets.only(bottom: 10.0), 
              child: 
               GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailScreen(product: similarProduct),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: bk,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          similarProduct.image,
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        similarProduct.name,
                        style: const TextStyle(color: te, fontSize: 17),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Expanded(child: 
                      Text(
                        similarProduct.price,
                        style: const TextStyle(color: te, fontSize: 10),
                        textAlign: TextAlign.right,
                      ),
                      )
                    ],
                  ),
                ),
               )
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bk,
      appBar: AppBar(
        title: Text(product.name),
        backgroundColor: ab,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  product.image,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                product.name,
                style: const TextStyle(color: te, fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                product.price,
                style: const TextStyle(fontSize: 20, color: te),
              ),
              const SizedBox(height: 20),
              if (product.description != null && product.description!.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    product.description!,
                    style: const TextStyle(color: des, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ElevatedButton(
                onPressed: () {
                  cartItems.add(product.toMap());
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${product.name} добавлен в корзину!')),
                  );
                },
                child: const Text('Добавить в корзину', style: TextStyle(color: te)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: but,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                ),
              ),
              _buildSimilarProducts(context, product.similarProducts),
            ],
          ),
        ),
      ),
    );
  }
}