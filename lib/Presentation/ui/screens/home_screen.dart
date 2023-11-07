import 'package:ecommerce/Presentation/state_holders/auth_controller.dart';
import 'package:ecommerce/Presentation/state_holders/category_controller.dart';
import 'package:ecommerce/Presentation/state_holders/home_slider_controller.dart';
import 'package:ecommerce/Presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:ecommerce/Presentation/state_holders/popular_product_controller.dart';
import 'package:ecommerce/Presentation/state_holders/read_profile_controller.dart';
import 'package:ecommerce/Presentation/state_holders/theme_mode_controller.dart';
import 'package:ecommerce/Presentation/ui/screens/auth/complete_profile_screen.dart';
import 'package:ecommerce/Presentation/ui/screens/product_list_screen.dart';
import 'package:ecommerce/Presentation/ui/utility/Images_assets.dart';
import 'package:ecommerce/Presentation/ui/widgets/category_card.dart';
import 'package:ecommerce/Presentation/ui/widgets/circular_icon_button.dart';
import 'package:ecommerce/Presentation/ui/widgets/home/home_slider.dart';
import 'package:ecommerce/Presentation/ui/widgets/home/section_header.dart';
import 'package:ecommerce/Presentation/ui/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../state_holders/new_product_controller.dart';
import '../../state_holders/special_product_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            SvgPicture.asset(
              ImageAssets.craftyBayNavLogoSVG,
            ),
            const Spacer(),
        CircleIconButton(
        icon: Icons.light_mode_outlined,
        onTap: () {

          if (Get.isDarkMode) {
            Get.changeThemeMode(ThemeMode.light);
          } else {
            Get.changeThemeMode(ThemeMode.dark);
          }

    }),

            const SizedBox(
              width: 8,
            ),
            CircleIconButton(icon: Icons.person, onTap: ()async {
              await Get.find<ReadProfileController>().readProfileData();
              Get.to(() => CreateProfileScreen());
            },),
            const SizedBox(
              width: 8,
            ),
            CircleIconButton(
              icon: Icons.login_outlined, onTap: () async {  await AuthController.clear();
              await AuthController.getAccessToken(); },),
            const SizedBox(
              width: 8,
            ),
            CircleIconButton(
                icon: Icons.call,
              onTap: () {

              },)
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                  decoration: InputDecoration(
                fillColor: Colors.grey.shade200,
                filled: true,
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search',
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                focusedBorder:
                    const OutlineInputBorder(borderSide: BorderSide.none),
                enabledBorder:
                    const OutlineInputBorder(borderSide: BorderSide.none),
              )),
              const SizedBox(
                height: 16,
              ),
              GetBuilder<HomeSliderController>(builder: (homeSliderController) {
                if (homeSliderController.getHomeSlidersInProgress) {
                  return const SizedBox(
                    height: 180.0,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                return HomeSlider(
                  sliders: homeSliderController.sliderModel.data ?? [],
                );
              }),
              const SizedBox(
                height: 16,
              ),
              SectionHeader(
                title: 'All Categories',
                onTap: () {
                  Get.find<MainBottomNavController>().changeScreen(1);
                },
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 90,
                child: GetBuilder<CategoriesController>(
                    builder: (categoryController) {
                  if (categoryController.getCategoriesInProgress) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  return ListView.builder(
                    itemCount:
                        categoryController.categoryModel.data?.length ?? 0,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CategoryCard(
                        categoryData:
                        categoryController.categoryModel.data![index],
                        onTap: (){
                          Get.to(ProductListScreen(categoryId:  categoryController.categoryModel.data![index].id!));
                        },
                      );
                    },
                  );
                }),
              ),
              const SizedBox(
                height: 16,
              ),
              SectionHeader(
                title: 'Popular',
                onTap: () {
                 Get.to( ProductListScreen(
                   productModel: Get.find<PopularProductController>().popularProductModel,
                 ));
                },
              ),
              SizedBox(
                  height: 165,
                  child: GetBuilder<PopularProductController>(
                      builder: (productController) {
                    if (productController.getPopularProductsInProgress) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: productController
                                .popularProductModel.data?.length ??
                            0,
                        itemBuilder: (context, index) {
                          return ProductCard(
                            product: productController
                                .popularProductModel.data![index],
                          );
                        });
                  })),
              const SizedBox(
                height: 16,
              ),
              SectionHeader(
                title: 'Special',
                onTap: () {
                  Get.to( ProductListScreen(
                    productModel: Get.find<SpecialProductController>().specialProductModel,
                  ));
                },
              ),
              SizedBox(
                  height: 165,
                  child: GetBuilder<SpecialProductController>(
                      builder: (productController) {
                        if (productController.getSpecialProductsInProgress) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: productController
                                .specialProductModel.data?.length ??
                                0,
                            itemBuilder: (context, index) {
                              return ProductCard(
                                product: productController
                                    .specialProductModel.data![index],
                              );
                            });
                      })),
              const SizedBox(
                height: 16,
              ),
              SectionHeader(
                title: 'New',
                onTap: () {
                  Get.to( ProductListScreen(
                    productModel: Get.find<NewProductController>().newProductModel,
                  ));
                },
              ),
              SizedBox(
                  height: 165,
                  child: GetBuilder<NewProductController>(
                      builder: (productController) {
                        if (productController.getNewProductsInProgress) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: productController.newProductModel.data?.length ?? 0,
                            itemBuilder: (context, index) {
                              return ProductCard(
                                product: productController.newProductModel.data![index],
                              );
                            });
                      }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
