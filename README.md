# Crafty_Bay (E-commerce Project Documentation)

CraftyBay is a sample e-commerce project that demonstrates the potential of creating an online platform for showcasing cutting-edge electronics and gadgets. It is not intended for commercial use or sale but serves as an example of how a tech-centric e-commerce app could be designed. CraftyBay's focus is on providing a seamless and enjoyable shopping experience, with an emphasis on user-friendliness and a wide range of products to explore.

![Screenshot 2023-11-08 045306](https://github.com/kazihabiba201/craftybay/assets/72264916/7689e5a0-11e4-4635-879a-4e5ff41cf4ee)

## MVP Implementation

In our Flutter e-commerce project, CraftyBay, we've implemented the MVP (Model-View-Presenter) architecture to enhance the development and maintainability of the application. This architectural choice has been pivotal in structuring and optimizing CraftyBay for a seamless shopping experience. In this section, we'll delve into why we adopted the MVP architecture and how it has benefited the project.

#### Why MVP in CraftyBay?

- `Clean Separation of Concerns:` MVP enforces a clear separation of concerns, which is essential in a complex project like CraftyBay. It segregates the application into Model, View, and Presenter components, making the codebase more manageable.

- `Testability:` Test-driven development is a cornerstone of high-quality software. MVP allows us to write unit tests for each component separately, ensuring the reliability and stability of CraftyBay.

- `Simplified User Interface:` With MVP, the Presenter handles the UI logic, keeping the View focused on displaying content. This simplifies the user interface code and ensures that the app remains user-friendly.

- `Scalability and Flexibility:` MVP architecture makes CraftyBay highly adaptable. As an e-commerce project, we understand the need for continuous updates and feature enhancements. MVP provides a flexible foundation for future developments.

- `Educational Value:` CraftyBay is not just a functional e-commerce app but also serves as an educational resource. By implementing MVP, we help developers and learners understand a widely-used architecture in real-world applications.


## CraftyBay Project Features

- `Secure User Authentication:` Register and login with confidence.
- `Extensive Product Exploration:` Discover a wide range of crafting supplies.
- `In-Depth Product Insights:` Access comprehensive product details.
- `Effortless Shopping Cart Management:` Add and control items in your cart.
- `Personalized Wishlist:` Save preferred products for future consideration.
- `User Profile Management:` Easily update your personal information.
- `Adaptive Theming:` Enjoy CraftyBay in both Dark and Light modes for comfortable viewing.
- `Product Review:` Share your insights and experiences with product reviews.
- `Payment Gateway:` Conveniently make secure transactions.
- `Internet Connection Check:` Ensure a smooth shopping experience with real-time 


## Project Tools

- `Flutter:` The primary framework for building the CraftyBay app, enabling cross-platform development.
- `GetX for State Management:` GetX is employed to efficiently manage the app's state, making it responsive and user-friendly.
- `API Integration:` CraftyBay utilizes APIs to retrieve and display product data, ensuring a dynamic and up-to-date shopping experience.

## Project Video Link
  
[![portfolio](https://img.shields.io/badge/my_portfolio-000?style=for-the-badge&logo=ko-fi&logoColor=white)]()











## Getting Started

### Prerequisites
Before you begin, make sure you have Flutter installed on your system. If you need installation guidance, visit the official Flutter Website [click the image!] [![Flutter Website](https://meterpreter.org/wp-content/uploads/2018/09/flutter.png)](https://docs.flutter.dev/get-started/install).
## Installation 

To launch the CraftyBay Application, follow these steps:

Clone this repository to your computer:
```bash
  git clone https://github.com/kazihabiba201/craftybay

```
Navigate to the project folder:
```bash
 cd ecommerce

```
    
Install dependencies:
```bash
 flutter pub get
```

### Installable APK

Click Here to download APK

### Executing the Code

Follow these steps to connect your device or emulator and launch the app using the following command:

```bash
flutter run
```


## Dependencies

By integrating these dependencies into the CraftyBay e-commerce application, we enhance its functionality and provide users with an enriched and feature-packed experience:

- cupertino_icons (^1.0.2): The package in a Flutter pubspec.yaml file indicates a dependency on the cupertino_icons package with a version constraint. It specifies that your project requires a version equal to or greater than 1.0.2 but less than 2.0.0 to ensure compatibility and receive updates within the 1.x.x range.

- flutter_svg (^1.1.6):  Essential for high-quality SVG graphics in CraftyBay, enabling sharp and clear product images, icons, and logos within the app.

- get (^4.6.3): 'get' package streamlines state management, navigation, and dependency injection in Flutter for more organized and efficient code.

- pin_code_fields (^8.0.1):  Enhances app security and user experience by allowing easy entry of PIN or verification codes during checkout.

- carousel_slider (^4.2.1): Adds interactive image carousels for showcasing products and engaging users with visually appealing content.

- http (^0.13.5): Essential for network requests, used to fetch product data, images, and dynamic content from servers and APIs.

- shared_preferences (^2.2.0): Used for storing user-specific settings and preferences, like language choices, themes, and shopping cart data, to create a personalized user experience.

- connectivity_plus (^5.0.0): This package is crucial for managing network connectivity, ensuring a smooth shopping experience, and handling offline scenarios while providing real-time updates to users.

- webview_flutter (^4.2.0): Vital for in-app web page rendering, enabling the display of payment methods, terms, privacy policies, and external content without leaving the app.

- flutter_rating_bar (^4.0.1): Simplifies the implementation of a product rating system, enabling user reviews and ratings to build trust and inform purchase decisions.


## Project structure

The directory structure for CraftyBay is organized in the following manner:

```

craftybay_ecommerce_application/
├── assets/
│   └── images/
│       ├── logo.svg
│       ├── logo_nav.svg
│       └── shoe.png
└── lib/
    ├── application/
    │   ├── app.dart
    │   └── state_holder_binder.dart
    ├── data/
    │   ├── models/
    │   │   ├── cart_list_model.dart
    │   │   ├── category_dart.dart
    │   │   ├── category_model.dart
    │   │   ├── invoice_create_response_model.dart
    │   │   ├── network_response.dart
    │   │   ├── payment_method.dart
    │   │   ├── product.dart
    │   │   ├── product_details_model.dart
    │   │   ├── product_model.dart
    │   │   ├── product_review_data.dart
    │   │   ├── product_review_model.dart
    │   │   ├── read_profile_data.dart
    │   │   ├── read_profile_model.dart
    │   │   ├── slider_data.dart
    │   │   ├── slider_model.dart
    │   │   ├── user_data.dart
    │   │   ├── wish_list_model.dart
    │   │   └── wishlist_data.dart
    │   ├── services/
    │   │   └── network_caller.dart
    │   └── utility/
    │       └── urls.dart
    ├── presentation/
    │   ├── state_holders/
    │   │   ├── add_to_cart_controller.dart
    │   │   ├── auth_controller.dart
    │   │   ├── cart_list_controller.dart
    │   │   ├── create_invoice_controller.dart
    │   │   ├── create_product_review_controller.dart
    │   │   ├── create_profile_controller.dart
    │   │   ├── create_wish_list_controller.dart
    │   │   ├── delete_wish_list_item_controller.dart
    │   │   ├── email_verification_controller.dart
    │   │   ├── get_product_review_controller.dart
    │   │   ├── home_slider_controller.dart
    │   │   ├── main_bottom_nav_controller.dart
    │   │   ├── new_product_controller.dart
    │   │   ├── otp_verification_controller.dart
    │   │   ├── popular_product_controller.dart
    │   │   ├── main_bottom_nav_screen_controller.dart
    │   │   ├── new_product_controller.dart
    │   │   ├── popular_product_controller.dart
    │   │   ├── product_list_controller.dart
    │   │   ├── product_detailes_controller.dart
    │   │   ├── read_profile_controller.dart
    │   │   ├── special_product_controller.dart
    │   │   ├── theme_mode_controller.dart
    │   │   └── wish_list_controller.dart
    │   └── ui/
    │       ├── screens/
    │       │   ├── auth/
    │       │   │   ├── complete_profile_screen.dart
    │       │   │   ├── email_verification_screen.dart
    │       │   │   ├── otp_verification_screen.dart
    │       │   │   ├── read_profile_screen.dart
    │       │   ├── cart_screen.dart
    │       │   ├── category_list_screen.dart
    │       │   ├── checkout_screen.dart
    │       │   ├── home_screen.dart
    │       │   ├── main_bottom_nav_screen.dart
    │       │   ├── product_details_screen.dart
    │       │   ├── product_list_screen.dart
    │       │   ├── product_review_list_screen.dart
    │       │   ├── ReviewsScreen.dart
    │       │   ├── splash_screen.dart
    │       │   └── webview_screen.dart
    │       │   └── wish_list_screen.dart
    │       ├── utility/
    │       │   └── app_colors.dart
    │       │   └── color_extension.dart
    │       │   └── images_assets.dart
    │       └── widgets/
    │           ├── home/
    │           │   ├── card_product_card.dart
    │           │   ├── home_slider.dart
    │           │   ├── product_image_slider.dart
    │           │   ├── section_header.dart
    │           │   └── wishlist_product_card.dart
    │           ├── product_details/
    │           │   ├── bottom_nav_card.dart
    │           │   ├── custom_stepper.dart
    │           │   ├── product_image_slider.dart
    │           │   ├── product_name_with_stepper.dart
    │           │   ├── product_rating_review_wishlist.dart
    │           │   ├── select_product_color.dart
    │           │   └── select_product_size.dart
    │           ├── category_card.dart
    │           ├── circular_icon_button.dart
    │           ├── create_review.dart
    │           ├── custom_stepper.dart
    │           ├── product_card.dart
    │           ├── review_card.dart
    │           ├── size_picker.dart
    └── main.dart

```
## Crafty_Bay Nav Logo
![logo_nav](https://github.com/kazihabiba201/craftybay/assets/72264916/32c4fbb5-bbcf-4ad0-9795-35f381737532)

## Crafty_Bay Logo
![logo](https://github.com/kazihabiba201/craftybay/assets/72264916/b14f5aa2-418e-40cf-b018-53349958b72f)

## Crafty_Bay Screens

### Cart_Screen
![Screenshot_2023-11-08-04-31-54-01_4cf85880cfe8ba4bfde5d76319ab5d2f](https://github.com/kazihabiba201/craftybay/assets/72264916/66461402-1465-497a-878c-592aedc3866c)   
![Screenshot_2023-11-08-04-32-00-87_4cf85880cfe8ba4bfde5d76319ab5d2f](https://github.com/kazihabiba201/craftybay/assets/72264916/8d2b66e7-5e9f-4d7b-a1d3-5d3b200d9f35)  
![Screenshot_2023-11-08-04-32-21-45_4cf85880cfe8ba4bfde5d76319ab5d2f](https://github.com/kazihabiba201/craftybay/assets/72264916/914dca50-3117-4113-9395-2115ec82439b) 
![Screenshot_2023-11-08-04-32-28-09_4cf85880cfe8ba4bfde5d76319ab5d2f](https://github.com/kazihabiba201/craftybay/assets/72264916/e7e34fc0-e7b6-458e-8fd6-57b710613b89)
![Screenshot_2023-11-08-04-32-34-83_4cf85880cfe8ba4bfde5d76319ab5d2f](https://github.com/kazihabiba201/craftybay/assets/72264916/2306b875-1ea2-4424-8047-101fc3ba340b)
![Screenshot_2023-11-08-04-34-41-59_4cf85880cfe8ba4bfde5d76319ab5d2f](https://github.com/kazihabiba201/craftybay/assets/72264916/05991ca1-517c-40f4-93df-ef31dcb340d6)
![Screenshot_2023-11-08-04-32-50-09_4cf85880cfe8ba4bfde5d76319ab5d2f](https://github.com/kazihabiba201/craftybay/assets/72264916/5fcedcec-62fd-4333-98cf-85991b9eecfc)
![Screenshot_2023-11-08-04-32-55-37_4cf85880cfe8ba4bfde5d76319ab5d2f](https://github.com/kazihabiba201/craftybay/assets/72264916/df60261e-247b-41ef-b471-3ee95fbab1da)
![Screenshot_2023-11-08-04-33-57-26_4cf85880cfe8ba4bfde5d76319ab5d2f](https://github.com/kazihabiba201/craftybay/assets/72264916/a803a79b-ab8a-4877-945b-4769c60e7937)
![Screenshot_2023-11-08-04-34-27-68_4cf85880cfe8ba4bfde5d76319ab5d2f](https://github.com/kazihabiba201/craftybay/assets/72264916/5b1aa684-8804-4047-82ef-1da60a579ee2)
![Screenshot_2023-11-08-04-29-52-48_4cf85880cfe8ba4bfde5d76319ab5d2f](https://github.com/kazihabiba201/craftybay/assets/72264916/d8d37e3a-9dd1-4ae6-8900-46561bc82dab)
![Screenshot_2023-11-08-04-30-14-91_4cf85880cfe8ba4bfde5d76319ab5d2f](https://github.com/kazihabiba201/craftybay/assets/72264916/fd4d8547-256d-4c3b-87a5-edd7cb626349)
![Screenshot_2023-11-08-04-31-07-83_4cf85880cfe8ba4bfde5d76319ab5d2f](https://github.com/kazihabiba201/craftybay/assets/72264916/c4bba8a8-9304-4223-aa7c-0b2853da4021)
![Screenshot_2023-11-08-04-31-23-84_4cf85880cfe8ba4bfde5d76319ab5d2f](https://github.com/kazihabiba201/craftybay/assets/72264916/43100cde-480f-4968-8cdb-54f3859b8e24)
![Screenshot_2023-11-08-04-31-45-45_4cf85880cfe8ba4bfde5d76319ab5d2f](https://github.com/kazihabiba201/craftybay/assets/72264916/59a45ab0-9928-4b73-8a19-694ce1300c6d)
![Screenshot_2023-11-06-23-03-51-55_4cf85880cfe8ba4bfde5d76319ab5d2f](https://github.com/kazihabiba201/craftybay/assets/72264916/a4c8a461-239e-449b-9783-ed6149582774) 

