import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:termii_store/components/app_text.dart';
import 'package:termii_store/components/brands.dart';
import 'package:termii_store/components/spacing.dart';
import 'package:termii_store/constants/assets.dart';
import 'package:termii_store/features/home/home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    top: 0.0,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                        child: Column(
                          children: [
                            const Spacing.height(36.0),
                            Row(
                              children: [
                                ///Avatar Design
                                const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/profile-photos-4.jpg'),
                                  radius: 26,
                                ),
                                const Spacing.width(10.0),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppText(
                                        'Good morning 👋🏽',
                                        color: Colors.black
                                            .withOpacity(0.6000000238418579),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        height: 1,
                                      ),
                                      const AppText(
                                        'Jossy Adebayomi',
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      )
                                    ],
                                  ),
                                ),
                                const Icon(Icons.shopping_cart_outlined)
                              ],
                            ),
                            const Spacing.height(36.0),

                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 18.0),
                              decoration: ShapeDecoration(
                                color: const Color(0xFFF5F5F5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.search,
                                    color: Color(0xFFBDBDBD),
                                  ),
                                  Spacing.width(10.0),
                                  AppText(
                                    'Search',
                                    color: Color(0xFFBDBDBD),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                            const Spacing.height(24.0),

                            ///Start Shopping Design
                            const Row(
                              children: [
                                AppText(
                                  'Start shopping',
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: -0.28,
                                ),
                                Spacer(),
                                AppText(
                                  'See all',
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  textDecoration: TextDecoration.underline,
                                )
                              ],
                            ),
                            const Spacing.height(24.0),

                            ///Banner Image
                            Image.asset(AppAssets.discount),
                            const Spacing.height(24.0),

                            ///Brands Design
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BrandsWidget(
                                  brandName: 'Adidas',
                                  image: 'assets/images/adidas.png',
                                ),
                                BrandsWidget(
                                  brandName: 'Nike',
                                  image: 'assets/images/nike.png',
                                ),
                                BrandsWidget(
                                  brandName: 'Vulgar',
                                  image: 'assets/images/vulgar.png',
                                ),
                                BrandsWidget(
                                  brandName: 'H&H',
                                  image: 'assets/images/hh.png',
                                )
                              ],
                            ),
                            const Spacing.height(24.0),

                            ///Brands Design
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BrandsWidget(
                                  brandName: 'Vulgar',
                                  image: 'assets/images/vulgar.png',
                                ),
                                BrandsWidget(
                                  brandName: 'Adidas',
                                  image: 'assets/images/adidas.png',
                                ),
                                BrandsWidget(
                                  brandName: 'H&H',
                                  image: 'assets/images/hh.png',
                                ),
                                BrandsWidget(
                                  brandName: 'Nike',
                                  image: 'assets/images/nike.png',
                                ),
                              ],
                            ),
                            const Spacing.height(24.0),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/images/arrowBack.png',
                                  height: 44,
                                  width: 44,
                                ),
                                Image.asset(
                                  'assets/images/dots.png',
                                  height: 56,
                                  width: 66,
                                ),
                                Image.asset(
                                  'assets/images/arrowForward.png',
                                  height: 44,
                                  width: 44,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  ///Bottom Navigation Design
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.home),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.grid_view),
                          ),
                          GestureDetector(
                            child: const AppText(
                              'MENU',
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.star_border_outlined),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.person),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
