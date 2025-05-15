

import 'package:flutter/material.dart';
import 'package:my_project/SearchScreen.dart';
import 'cart.dart';
import 'product.dart';
import 'ProductDetailScreen.dart';
import 'CartScreen.dart';
import 'ProfileScreen.dart';
import 'colors.dart';


class HomeScreenContent extends StatelessWidget {
   HomeScreenContent({Key? key}) : super(key: key);

  final List<String> categories = const [
    "Декор",
    "Украшения",
    "Вязаные изделия",
    "Подарки",
    "Аксессуары",
  ];

  final List<Product> popularProducts = [
  Product(name: "Свеча ручной работы",
   price: "500 USD",
    image: "assets/svechi.jpg",
     description: "Ароматическая свеча из натурального воска с запахом лаванды.",
     similarProducts: [Product(name: 'Ароматическая свеча', price: '150 USD', image: 'assets/svechi2.JPG',),
     Product(name: 'Свечи высокого качества', price: '200 USD ', image: 'assets/svechi3.JPG')
     ]),
  Product(name: "Деревянная рамка",
   price: "1200 USD",
    image: "assets/ramka.jpg",
     description: "Элегантная фоторамка из массива дуба.",
     similarProducts: [
      Product(name: 'Деревянные рамки', price: '600 USD', image: 'assets/rama1.jpg'),
      Product(name: 'Рамки для фото', price: '500 USD', image: 'assets/rama2.jpg')
     ]),
  Product(name: "Керамическая чашка",
   price: "900 USD", 
   image: "assets/chashka.jpg",
    description: "Керамическая чашка ручной работы с уникальным узором.",
    similarProducts: [
      Product(name: 'Керамическая чашка', price:'800 USD', image: 'assets/chaska2.JPG'),
      Product(name: 'Чашка керамическая', price: '850 USD', image: 'assets/chaska1.JPG')
    ]
  
  ),
];

final List<Product> womenProducts = [
   Product(name: "Серьги ручной работы",
    price: "1500 USD", 
    image: "assets/earrings.jpg",
     description: "Изящные серьги из серебра с натуральным жемчугом.",
     similarProducts: [
      Product(name: 'Треугольные серьги', price: '1200 USD', image: 'assets/earings1.jpg'),
      Product(name: 'Серебрянные серьги', price: '900 USD', image: 'assets/earings2.jpg')
     ]),
  Product(name: "Шарф вязаный",
   price: "2500 USD",
    image: "assets/scarf.jpg",
     description: "Теплый вязаный шарф из мягкой мериносовой шерсти.",
     similarProducts: [
      Product(name: 'Стильный шарф', price: '1000 USD', image: 'assets/scarf1.jpg'),
      Product(name: 'Вязанный шарф', price: '950 USD', image: 'assets/scarf2.jpg')
     ]),
  Product(name: "Сумочка из кожи",
   price: "3200 USD",
    image: "assets/sumocka.jpg",
     description: "Стильная кожаная сумочка через плечо.",
     similarProducts: [
      Product(name: 'Дамская сумка', price: '3000 USD', image: 'assets/sumka1.jpg'),
      Product(name: 'Стильная сумочка', price: '2500 USD', image: 'assets/sumka2.jpg')
     ]),
];

final List<Product> menProducts = [
  Product(name: "Кожаный ремень", 
  price: "2000 USD",
   image: "assets/belt.jpg",
    description: "Прочный кожаный ремень с металлической пряжкой.",
    similarProducts: [
      Product(name:'Стильный ремень', price: '1800 USD', image: 'assets/belt1.jpg'),
      Product(name: 'Ремьни ручной работы', price: '1600 USD', image: 'assets/belt2.jpg')
    ]),
  Product(name: "Деревянный брелок",
   price: "700 USD",
    image: "assets/brelok.jpg",
     description: "Оригинальный брелок из натурального дерева.",
     similarProducts: [
      Product(name: 'Кожанный брелок', price: '500 USD', image: 'assets/brelok3.jpg'),
      Product(name: 'Металлический брелок', price: '450 USD', image: 'assets/brelok2.jpg')
     ]),
  Product(name: "Блокнот ручной работы",
   price: "1300 USD",
    image: "assets/notebook.jpg", 
    description: "Блокнот в кожаном переплете с нелинованными страницами.",
    similarProducts: [
      Product(name: 'Кожанный блокнот', price: '1200 USD', image: 'assets/bloknot.jpg'),
      Product(name: 'Блокнот для заметок', price: '600 USD', image: 'assets/loknott.jpg')
    ]),
];
  Widget buildCategoryList() => SizedBox(
        height: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Chip(
              label: Text(categories[index], style: const TextStyle(color:te, fontWeight: FontWeight.bold)),
              backgroundColor: but,
            ),
          ),
        ),
      );
      

  Widget buildProductList(BuildContext context, String title, List<Product> products) => 
  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle( color: te, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) => Container(
                width: 140,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: cart,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetailScreen(product: products[index]),
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          products[index].image,
                          height: 100,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(products[index].name, style: const TextStyle(color:te, fontWeight: FontWeight.w600)),
                    Text(products[index].price, style: const TextStyle(color:te)),
                    const SizedBox(height: 8),
                    const Spacer(),
                    ElevatedButton(
  onPressed: () {
    
    cartItems.add(products[index].toMap()); 
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('${products[index].name} добавлен в корзину!')),
    );
  },
  child: const Text('В корзину', style: TextStyle(color: te),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:but,
                        minimumSize: const Size.fromHeight(30),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:bk ,
      appBar: AppBar(
        title: const Text("Welcome to Handmade Shop"),
        backgroundColor: ab
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            const SizedBox(height: 10),
            buildCategoryList(),
            buildProductList(context, "Популярные", this.popularProducts),
            buildProductList(context, "Для женщин", this.womenProducts),
            buildProductList(context, "Для мужчин", this.menProducts),
          ],
        ),
      ),
      
    );
  }
}
class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
 HomeScreenContent(),
     
     const CartScreen(),
   
    const ProfileScreen(),

    const SearchScreen(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ab,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
         
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          
           BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: but,
        onTap: _onItemTapped,
      ),
    );
  }
}

