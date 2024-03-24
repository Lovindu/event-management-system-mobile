import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:test_app/components/app_constatnts.dart';
import 'package:http/http.dart' as http;

class EvenetTicketConfirmation extends StatefulWidget {
  String total;
  final double selectedOption;
  final int count;
  EvenetTicketConfirmation(
      {super.key,
      required this.total,
      required this.selectedOption,
      required this.count});

  @override
  State<EvenetTicketConfirmation> createState() =>
      _EvenetTicketSelectionState();
}

List<String> options = ['options 1', 'options 2'];

class _EvenetTicketSelectionState extends State<EvenetTicketConfirmation> {
  Map<String, dynamic>? paymentIntent;

  String currentOption = options[0];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Ticket Confirmation',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                'lib/images/Ellipse 19.png',
                height: 30,
                width: 30,
              ),
              margin: EdgeInsets.all(10),
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 335,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff4B38AC)),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Event name',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Text(
                            'Date:',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 36.0),
                          Text(
                            'Wed, 10, June',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Time:',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 33.0),
                          Text(
                            '5pm onwards',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Location:',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'Colombo',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '-------------------------------',
                            style: TextStyle(
                                color: Color(0xff4B38AC),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                '(Ticket Type)',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 5.0),
                              Text(
                                'x${widget.count}',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 120,
                          ),
                          Row(
                            children: [
                              Text(
                                'Rs.${widget.selectedOption}',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10.0),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Booking fee',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 160,
                          ),
                          Row(
                            children: [
                              Text(
                                'Rs.100.0',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '-------------------------------',
                            style: TextStyle(
                                color: Color(0xff4B38AC),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 75,
                      ),
                      Row(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                    color: Color(0xff4B38AC),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 170,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Rs.${widget.total}',
                                style: TextStyle(
                                    color: Color(0xff4B38AC),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 0, 0),
              child: Row(
                children: [
                  Text(
                    'How to pick up the Ticket',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            RadioListTile(
              title: Row(
                children: [
                  Text(
                    'Option 01',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              value: options[0],
              groupValue: currentOption,
              onChanged: (value) {
                setState(() {
                  currentOption = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Row(
                children: [
                  Text(
                    'Option 02',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              value: options[1],
              groupValue: currentOption,
              onChanged: (value) {
                setState(() {
                  currentOption = value.toString();
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 5),
              child: Row(
                children: [
                  Text(
                    'Instructions',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
              child: Row(
                children: [
                  Text(
                    '• Instruction 01',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
              child: Row(
                children: [
                  Text('• Instruction 02'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Row(
                children: [
                  Text('• Instruction 03'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFC8E94)),
                  onPressed: () {
                    makepayment(
                        amount: "4100", currency: "LKR");
                  },
                  child: Text(
                    'Proceed to pay',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Map<String, dynamic> paymentIntentData = {};
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
}
