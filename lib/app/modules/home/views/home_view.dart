import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mchinetest/app/routes/app_pages.dart';
import 'package:mchinetest/app/widgets.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text(
          "Personal Details",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/logo.png',
              width: 120,
              height: 80,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: controller.formkey,
                child: Container(
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, bottom: 5),
                          child: Text(
                            "Name",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: TextFormField(
                            controller: controller.nameController,
                            decoration: textInputDecoration.copyWith(
                              labelText: "Enter your name",
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your username";
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Gender",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(() => Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Male',
                                      groupValue:
                                          controller.selectedGender.value,
                                      onChanged: (String? value) {
                                        if (value != null) {
                                          controller.selectGender(value);
                                        }
                                      },
                                    ),
                                    Text('Male'),
                                  ],
                                )),
                            SizedBox(width: 20),
                            Obx(() => Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Female',
                                      groupValue:
                                          controller.selectedGender.value,
                                      onChanged: (String? value) {
                                        if (value != null) {
                                          controller.selectGender(value);
                                        }
                                      },
                                    ),
                                    Text('Female'),
                                  ],
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, bottom: 5),
                          child: Text(
                            "Mobile Number",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: TextFormField(
                              controller: controller.mobilenoController,
                              decoration: InputDecoration(
                                prefixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text(
                                        "+966",
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                    ),
                                    Container(
                                      height: 58,
                                      child: VerticalDivider(
                                        thickness: 1,
                                        width: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                labelText: " 5xxxxxxxxxxxxx",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                ),
                              ),
                              keyboardType: TextInputType.phone,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter your phone number";
                                }
                                // Optionally, validate the phone number format here
                                return null;
                              },
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, bottom: 5),
                          child: Text(
                            "Emergency Contact Number",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: TextFormField(
                              controller: controller.contactnoController,
                              decoration: InputDecoration(
                                prefixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text(
                                        "+966",
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                    ),
                                    Container(
                                      height: 58,
                                      child: VerticalDivider(
                                        thickness: 1,
                                        width: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                labelText: " 5xxxxxxxxxxxxx",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                ),
                              ),
                              keyboardType: TextInputType.phone,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter your phone number";
                                }
                                // Optionally, validate the phone number format here
                                return null;
                              },
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, bottom: 5),
                          child: Text(
                            "ID Number",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: TextFormField(
                            controller: controller.idnumberController,
                            decoration: textInputDecoration.copyWith(
                              labelText: "Enter your Company ID number",
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your Company ID number";
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, bottom: 5),
                          child: Text(
                            "Bank IBAN",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: TextFormField(
                            controller: controller.bankibanController,
                            decoration: textInputDecoration.copyWith(
                              labelText: "Enter your Bank IBAN",
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your Bank IBAN";
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, bottom: 5),
                          child: Text(
                            "City",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Obx(
                            () => DropdownButtonFormField<String>(
                              value: controller.selectedCity.value.isNotEmpty
                                  ? controller.selectedCity.value
                                  : null,
                              decoration: InputDecoration(
                                labelText: "Enter City Name",
                                border:
                                    OutlineInputBorder(), // Ensures the border is visible
                              ),
                              onChanged: (String? newValue) {
                                if (newValue != null) {
                                  controller.setSelectedCity(newValue);
                                }
                              },
                              items: controller.cityList.map((String city) {
                                return DropdownMenuItem<String>(
                                  value: city,
                                  child: Text(city),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, bottom: 5),
                          child: Text(
                            "Address",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: TextFormField(
                            maxLines: 2,
                            controller: controller.addressController,
                            decoration: textInputDecoration.copyWith(
                              labelText: "Enter your Address",
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your address";
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              onPressed: () {
                                if (controller.formkey.currentState!
                                    .validate()) {
                                  controller
                                      .setIsSubmitted(true); // Show the overlay
                                }
                              },
                              child: Text(
                                "Submit",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Obx(() {
              if (controller.isSubmitted.value) {
                return SubmissionOverlay(
                  onHomePressed: () {
                    controller.setIsSubmitted(false); // Hide the overlay
                    // Add your home navigation logic here
                  },
                );
              } else {
                return SizedBox.shrink();
              }
            }),
          ],
        ),
      ),
    );
  }
}

class SubmissionOverlay extends StatelessWidget {
  final VoidCallback onHomePressed;

  const SubmissionOverlay({required this.onHomePressed});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.7,
          child: ModalBarrier(
            color: Colors.black,
            dismissible: false,
          ),
        ),
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Submitted',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed(Routes.PRODUCTS);
                  },
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
