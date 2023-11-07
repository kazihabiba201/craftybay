class Urls {
  static const String _baseUrl = 'https://ecom-api.teamrabbil.com/api';

  static String verifyEmail(String email) => '$_baseUrl/UserLogin/$email';

  static String verifyOTP(String email, String otp) =>
      '$_baseUrl/VerifyLogin/$email/$otp';
  static String getHomeSliders = '$_baseUrl/ListProductSlider';
  static String getCategories = '$_baseUrl/CategoryList';

  static String getProductsByRemarks(String remarks) =>
      '$_baseUrl/ListProductByRemark/$remarks';

  static String getProductDetails(int productId) =>
      '$_baseUrl/ProductDetailsById/$productId';

  static String getProductByCategory(int categoryId) =>
      '$_baseUrl/ListProductByCategory/$categoryId';

  static const String addToCart = '$_baseUrl/CreateCartList';
  static const String getCartList = '$_baseUrl/CartList';

  static String removeFromCart(int id) => '$_baseUrl/DeleteCartList/$id';
  static const String createInvoice = '$_baseUrl/InvoiceCreate';
  static String getWishList = '$_baseUrl/ProductWishList';

  static String createWishListItem(int id) => '$_baseUrl/CreateWishList/$id';

  static String deleteWishListItem(String id) => '$_baseUrl/RemoveWishList/$id';

  static String getProductReview(int id) => '$_baseUrl/ListReviewByProduct/$id';

  static String createProductReview = '$_baseUrl/CreateProductReview';

  static String readProfileData = '$_baseUrl/ReadProfile';

  static String  createCompleteProfile = '$_baseUrl/CreateProfile';
  static const String logOut = '$_baseUrl/logout';
}

