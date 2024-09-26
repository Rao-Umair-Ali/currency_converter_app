import 'package:flutter/material.dart';

Widget textFieldApp(TextEditingController controller) {
  return TextField(
    controller: controller,
    style: const TextStyle(color: Colors.white, fontSize: 25),
    keyboardType: TextInputType.number,
    decoration: const InputDecoration(
        prefixIcon: Icon(
          Icons.monetization_on,
          color: Colors.white,
        ),
        hintText: "Enter amount in dollar",
        hintStyle: TextStyle(fontSize: 20),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white, style: BorderStyle.solid, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(25))),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white, style: BorderStyle.solid, width: 2))),
  );
}
