import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:maintainance/res/app_colors.dart';
import 'package:maintainance/res/app_images.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List drawerList = [
    'About Us',
    "FAQs",
    "Terms & Conditions",
    "Privacy Policy",
    'Contact Us',
    'Share App'
  ];
  List drawerIcons = [
    Icons.info_outline,
    Icons.edit_note_sharp,
    Icons.chrome_reader_mode_outlined,
    Icons.safety_check_rounded,
    Icons.contact_phone_outlined,
    Icons.share,
  ];
  final List<String> carouselImageList = [
    AppImages.image0,
    AppImages.image1,
    AppImages.image2,
    AppImages.image3,
    AppImages.image4,
    AppImages.image5,
    AppImages.image6,
    AppImages.image7,
  ];
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    final double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: AppColors.drawerBackgroundColor,
        child: Column(
          children: [
            ...List.generate(
              drawerList.length,
              (index) => ListTile(
                title: Text(
                  drawerList[index],
                  style: const TextStyle(color: AppColors.whiteColor),
                ),
                leading: Icon(
                  drawerIcons[index],
                  color: AppColors.whiteColor,
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home Tab"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.05,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: height * 0.2,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
            items: carouselImageList
                .map((item) => ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Center(
                        child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                          width: 1000,
                        ),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
