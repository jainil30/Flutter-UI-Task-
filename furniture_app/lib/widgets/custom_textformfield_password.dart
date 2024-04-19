import 'package:flutter/material.dart';
import 'package:get/get.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Textform field with textInputType as password
 */
class CustomPasswordTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final RxBool isObscured;
  final String? fieldName;
  const CustomPasswordTextFormField({
    Key? key,
    required this.controller,
    required this.isObscured,
    this.fieldName,
  }) : super(key: key);

  @override
  _CustomPasswordTextFormField createState() => _CustomPasswordTextFormField();
}

class _CustomPasswordTextFormField extends State<CustomPasswordTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isObscured.value,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: "Enter Your ${widget.fieldName}",
        hintStyle: Theme.of(context).textTheme.titleMedium!,
        fillColor: Theme.of(context).hoverColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        helperStyle: TextStyle(color: Colors.green),
        suffixIcon: IconButton(
          icon: Icon(widget.isObscured.value
              ? Icons.visibility
              : Icons.visibility_off),
          onPressed: () {
            setState(() {
              widget.isObscured.value = !widget.isObscured.value;
            });
          },
        ),
        alignLabelWithHint: false,
        filled: true,
      ),
      keyboardType: TextInputType.visiblePassword,
      textInputAction: TextInputAction.done,
      validator: (value) {
        if (value!.isEmpty) {
          return "${widget.fieldName} is mandatory";
        }
        return null;
      },
    );
  }
}
