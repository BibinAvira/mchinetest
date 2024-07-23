import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductsController extends GetxController {
  final List<Map<String, String>> images = [
    {'path': 'assets/makeup.png', 'name': 'Makeup'},
    {'path': 'assets/care.png', 'name': 'Care'},
    {'path': 'assets/gifts.png', 'name': 'Gifts'},
    {'path': 'assets/perfume.jpg', 'name': 'Perfume'},
    {'path': 'assets/nails.png', 'name': 'Nails'},
    {'path': 'assets/lenses.png', 'name': 'Lenses'},
    {'path': 'assets/devices.png', 'name': 'Devices'},
    {'path': 'assets/home.jpg', 'name': 'Home'},
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
