import 'package:et_app/features/authentication/screens/home/home.dart';
import 'package:et_app/utils/constants/colors.dart';
import 'package:et_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EtHelperFunctions.isDarkMode(context);
    final controller = Get.put(NavigationController());
    return Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
            elevation: 0,
            indicatorColor: dark ? EtColors.darkergrey : EtColors.grey,
            backgroundColor: dark ? Colors.black : Colors.white,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: 'Favourites'),
              NavigationDestination(
                  icon: Icon(Icons.person_2_outlined), label: 'Profile'),
            ],
          ),
        ),
        body: Obx(() => controller.screens[controller.selectedIndex.value]));
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    Home(),
    Container(
      height: 500,
      color: Colors.black,
    ),
    Container(
      height: 500,
      color: Colors.orange,
    ),
    Container(
      height: 500,
      color: Colors.teal,
    )
  ];
}
