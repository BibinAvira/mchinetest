import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mchinetest/app/routes/app_pages.dart';

import '../controllers/products_controller.dart';

class ProductsView extends GetView<ProductsController> {
  const ProductsView({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 2,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon:
                        Icon(Icons.menu, size: 30), // Custom size for menu icon
                    onPressed: () {
                      Get.toNamed(Routes.HOME);
                    },
                  ),
                  SizedBox(width: 10), // Add spacing between icons
                  IconButton(
                    icon: Icon(Icons.notification_add_outlined,
                        size: 30), // Custom size for notifications icon
                    onPressed: () {
                      // Handle notifications button pressed
                    },
                  ),
                ],
              ),
              Image.asset(
                'assets/logo.png',
                height: 50, // Adjust the height as needed
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.search,
                        size: 30), // Custom size for search icon
                    onPressed: () {
                      // Handle search button pressed
                    },
                  ),
                  SizedBox(width: 10), // Add spacing between icons
                  IconButton(
                    icon: Icon(Icons.qr_code_scanner,
                        size: 30), // Custom size for QR code icon
                    onPressed: () {
                      // Handle QR code scanner button pressed
                    },
                  ),
                  SizedBox(width: 10), // Add spacing between icons
                  IconButton(
                    icon: Icon(Icons.shopping_bag_outlined,
                        size: 30), // Custom size for settings icon
                    onPressed: () {
                      // Handle settings button pressed
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: controller.images.map((image) {
              return ImageCard(
                imagePath: image['path']!,
                name: image['name']!,
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final String imagePath;
  final String name;

  const ImageCard({
    required this.imagePath,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Image.asset(
            imagePath,
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 5),
        Text(name),
      ],
    );
  }
}
