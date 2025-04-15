import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    final userData = await fetchUserData();
    final user = jsonDecode(userData);
    final userId = user['id'];

    final userOrdersData = await fetchUserOrders(userId);
    final orders = jsonDecode(userOrdersData);

    double total = 0.0;

    for (final product in orders) {
      final productPriceData = await fetchProductPrice(product);
      final price = jsonDecode(productPriceData);
      total += price;
    }

    return total;
  } catch (e) {
    return -1;
  }
}