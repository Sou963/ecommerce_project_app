// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'pages/home_page.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch: Colors.amber),
//       home: HomePage(),
//     );
//   }
// }

import 'package:e_shop/pages/category_page.dart';
import 'package:e_shop/pages/home_page.dart';
import 'package:e_shop/pages/product_list_page.dart';
import 'package:e_shop/pages/splash_page.dart';
import 'package:e_shop/pages/user_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//-------------------- Controller --------------------
class NavController extends GetxController {
  var currentIndex = 0.obs;

  void changePage(int index) {
    currentIndex.value = index;
  }
}

// //-------------------- Pages --------------------
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text("🏠 Home Page", style: TextStyle(fontSize: 22)));
//   }
// }

// class ProductPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text("🛒 Product List Page", style: TextStyle(fontSize: 22)),
//     );
//   }
// }

// class CategoryPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text("📂 Category Page", style: TextStyle(fontSize: 22)),
//     );
//   }
// }

// class UserPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text("👤 User Page", style: TextStyle(fontSize: 22)));
//   }
// }

//-------------------- Main Scaffold --------------------
class MainPage extends StatelessWidget {
  final NavController navController = Get.put(NavController());

  final List<Widget> pages = [
    HomePage(),
    ProductListPage(),
    CategoryPage(),
    UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: pages[navController.currentIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: navController.currentIndex.value,
          onTap: navController.changePage,
          selectedItemColor: Colors.teal,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: "Products",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "Category",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "User"),
          ],
        ),
      ),
    );
  }
}

//-------------------- Main App --------------------
void main() {
  runApp(GetMaterialApp(debugShowCheckedModeBanner: false, home: SplashPage()));
}
