import 'package:get/get.dart';

class AuthController extends GetxController {
  var isLoading = false.obs;

  trueLoadVal() => isLoading = true.obs;
  falseLoadVal() => isLoading = false.obs;
}
