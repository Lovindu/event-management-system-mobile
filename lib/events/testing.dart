/*Map<String, dynamic> paymentIntentData = {};
Future<void> makepayment(
    {required String amount, required String currency}) async {
  try {
    paymentIntentData = await createPaymentIntent(amount, currency);
    if (paymentIntentData != null) {
      await Stripe.instance.initPaymentSheet(
          paymentSheetParameters: SetupPaymentSheetParameters(
              googlePay: PaymentSheetGooglePay(merchantCountryCode: "IN"),
              merchantDisplayName: "Tharu",
              customerId: paymentIntentData['customer'],
              paymentIntentClientSecret: paymentIntentData['client_secret'],
              customerEphemeralKeySecret: paymentIntentData['ephemeralkey']));
      displayPaymentSheet();
    }
  } catch (e) {
    print("EXCEPTION======$e");
  }
}

createPaymentIntent(String amount, String currency) async {
  try {
    Map<String, String> body = {
      'amount': calculateAmount(amount),
      'currency': currency,
      'payment_method_types[]': 'card'
    };
    var response = await http.post(
        Uri.parse(""
            "https://api.stripe.com/v1/payment_intents"
            ""),
        body: body,
        headers: {
          "Authorization": "Bearer $secretKey",
          "Content-type": "application/x-www-form-urlencoded"
        });
    return jsonDecode(response.body);
  } catch (e) {}
}

Future<void> displayPaymentSheet() async {
  try {
    await Stripe.instance.presentPaymentSheet();
    print("Success payment");
  } catch (e) {
    print("EXCEPTION======$e");
  }
}

calculateAmount(String amount) {
  final amountValue = (int.parse(amount)) * 100;
  return amountValue.toString();
}*/
