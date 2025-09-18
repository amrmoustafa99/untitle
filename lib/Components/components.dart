import 'package:flutter/material.dart';

Widget defaultButton({
  double radius = 10,
  double width = double.infinity,
  Color color = Colors.blue,
  required String text,
  required Function() function,
}) => Container(
  width: width,
  decoration: BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(radius),
  ),
  child: MaterialButton(onPressed: function, child: Text(text)),
);

Widget defaultTextFormField({
  required TextEditingController controller,
  required String label,
  required Icon prefixIcon,
  required FormFieldValidator function,
  Icon? suffix,
  TextInputType type = TextInputType.text,
  bool isPassword = false,
}) => TextFormField(
  obscureText: isPassword,
  controller: controller,
  keyboardType: type,
  validator: function,
  decoration: InputDecoration(
    prefixIcon: prefixIcon,
    labelText: label,
    suffixIcon: suffix,
    border: OutlineInputBorder(),
  ),
);
/*
Widget defaultTextFormField({
  required Icon prefixIcon,
  required String text,
  TextInputType keyboardType = TextInputType.text,
}) => TextFormField(
  controller: TextEditingController(),
  keyboardType: keyboardType,
  decoration: InputDecoration(
    prefixIcon: prefixIcon,
    labelText: text,
    border: OutlineInputBorder(),
  ),
);
*/
TextButton buildTextButton({
  required String text,
  required VoidCallback function,
}) {
  return TextButton(onPressed: function, child: Text(text));
}
