import 'package:furniture_app/common/data.dart';
import 'package:furniture_app/models/AddressModel.dart';
import 'package:furniture_app/models/PaymentMethodModel.dart';
import 'package:get/get.dart';

class CheckoutController extends GetxController {
  var addresses = <AddressModel>[].obs;
  var selectedAddress = 1.obs;

  var payments = <PaymentMethodModel>[].obs;
  var selectedPayment = 1.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getAllAdresses();
    printAllAdresse();

    getAllPayments();
    printPayments();
  }

  void getAllAdresses() {
    for (var address in addressList) {
      addresses.add(AddressModel.fromJson(address));
    }
  }

  void printAllAdresse() {
    for (var address in addresses) {
      print(address.addressType);
    }
  }

  void getAllPayments() {
    for (var payment in paymentsList) {
      payments.add(PaymentMethodModel.fromJson(payment));
    }
  }

  void printPayments() {
    for (var payment in payments) {
      print(payment.paymentMethodName);
    }
  }
}
