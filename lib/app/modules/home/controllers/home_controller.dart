import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final formkey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobilenoController = TextEditingController();
  final TextEditingController contactnoController = TextEditingController();
  final TextEditingController idnumberController = TextEditingController();
  final TextEditingController bankibanController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  var selectedGender = 'Male'.obs;
  var isSubmitted = false.obs;
  var cityList =
      ['Aluva', 'Perumbavoor', 'Muvattupuzha', 'Kaloor', 'Palarivattom'].obs;
  var selectedCity = 'Aluva'.obs;

  void setSelectedCity(String city) {
    selectedCity.value = city;
    cityController.text = city;
  }

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

  void selectGender(String gender) {
    selectedGender.value = gender;
  }

  void setIsSubmitted(bool value) {
    isSubmitted.value = value;
  }
}
