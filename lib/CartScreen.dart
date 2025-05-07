import 'package:flutter/material.dart';
import 'cart.dart';
import 'colors.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bk,
      appBar: AppBar(
        title: const Text("Корзина"),
        backgroundColor: ab,
      ),
      body: cartItems.isEmpty
          ? const Center(child: Text("Ваша корзина пуста.", style: TextStyle(color: te),))
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return ListTile(
                  leading: Image.asset(item['image']!, width: 50),
                  title: Text(item['name']!,style: TextStyle(color: te),),
                  subtitle: Text(item['price']!,style: TextStyle(color: te),),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: but,),
                    onPressed: () {
                      setState(() {
                        cartItems.removeAt(index);
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content:
                                Text('${item['name']} удален из корзины!')),
                      );
                    },
                  ),
                );
              },
            ),
      
      
    );
  }
}
