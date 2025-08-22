import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {
      "name": "Electronics",
      "icon": Icons.electrical_services,
      "color": Colors.blue,
    },
    {"name": "Fashion", "icon": Icons.checkroom, "color": Colors.pink},
    {"name": "Groceries", "icon": Icons.shopping_basket, "color": Colors.green},
    {"name": "Home Appliances", "icon": Icons.kitchen, "color": Colors.orange},
    {"name": "Beauty & Health", "icon": Icons.brush, "color": Colors.purple},
    {"name": "Sports", "icon": Icons.sports_soccer, "color": Colors.red},
    {"name": "Toys", "icon": Icons.toys, "color": Colors.teal},
    {"name": "Books", "icon": Icons.book, "color": Colors.brown},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Categories",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1.2,
          ),
          itemBuilder: (context, index) {
            var category = categories[index];
            return GestureDetector(
              onTap: () {
                // এখানে চাইলে তুমি category-specific page এ navigate করতে পারবে
              },
              child: Container(
                decoration: BoxDecoration(
                  color: category["color"].withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      offset: Offset(2, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: category["color"],
                      child: Icon(
                        category["icon"],
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      category["name"],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: category["color"].shade900,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
