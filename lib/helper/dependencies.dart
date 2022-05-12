import 'package:e_comm_flutter/controllers/popular_product_controller.dart';
import 'package:e_comm_flutter/data/api/api_client.dart';
import 'package:e_comm_flutter/data/repository/popular_product_repo.dart';
import 'package:e_comm_flutter/utils/app_constants.dart';

import 'package:get/get.dart';

import '../controllers/recommended_product_controller.dart';
import '../data/repository/recommended_product_repo.dart';

Future<void> init() async {
  // API client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  // repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));

  // Controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo: Get.find()));
}
