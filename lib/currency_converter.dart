import 'package:currency_converter_app/components/button.dart';
import 'package:currency_converter_app/components/textfield.dart';
import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  TextEditingController textEditingController = TextEditingController();
  double result = 0;
  void convertCurrency() {
    setState(() {
      result = (double.parse(textEditingController.text) * 277.73);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Currency Converter",
          style: TextStyle(shadows: [
            Shadow(
              blurRadius: 5.0,
              color: Colors.black, // Shadow color for a better outline effect
              offset: Offset(2.0, 2.0),
            ),
          ], color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.blue[300],
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "PKR ${result.toStringAsFixed(2)}",
                style: const TextStyle(shadows: [
                  Shadow(
                    blurRadius: 5.0,
                    color: Colors
                        .black, // Shadow color for a better outline effect
                    offset: Offset(2.0, 2.0),
                  ),
                ], color: Colors.white, fontSize: 50),
              ),
              textFieldApp(textEditingController),
              const SizedBox(
                height: 20,
              ),
              buttonElevated(convertCurrency),
            ],
          ),
        ),
      ),
    );
  }
}
