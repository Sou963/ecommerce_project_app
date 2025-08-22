// import 'package:flutter/material.dart';
// import '../models/product_model.dart';

// class ProductPage extends StatelessWidget {
//   final Product product;

//   const ProductPage({super.key, required this.product});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(product.title)),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Image.network(product.thumbnail, height: 200),
//             const SizedBox(height: 16),
//             Text(
//               product.title,
//               style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 8),
//             Text(product.description),
//             const SizedBox(height: 12),
//             Text(
//               "\$${product.price}",
//               style: const TextStyle(fontSize: 20, color: Colors.green),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String name;
  final String price;
  final String image;

  const ProductPage({
    super.key,
    required this.name,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(image, height: 200),
            const SizedBox(height: 16),
            Text(
              name,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              price,
              style: const TextStyle(fontSize: 20, color: Colors.green),
            ),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: () {}, child: const Text("Add to Cart")),
          ],
        ),
      ),
    );
  }
}
