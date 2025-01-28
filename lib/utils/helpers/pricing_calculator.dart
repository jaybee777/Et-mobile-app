class EtPricingCalculator {
  //calculate total price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxtRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getDeliveryCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  //calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getDeliveryCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  //calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxtRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxtRateForLocation(String location) {
    return 0.075;
  }

  static double getDeliveryCost(String location) {
    if (location == "kaduna") {
      return 1000;
    } else {
      return 2500;
    }
  }
}
