import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String label;
  TextEditingController controller;
  Function validationFun;
  CustomTextField(this.label, this.controller, this.validationFun);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 3),
      child: TextFormField(
        validator:(x)=> validationFun(x),
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          label: Text(label)),
      ),
    );
  }
}
