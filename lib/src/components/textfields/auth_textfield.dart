import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:move_bus/src/components/styles/colors.dart';

class AuthTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final bool isObscure;
  final TextInputAction? textInputAction;
  final FormFieldValidator? validator;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;

  final TextInputFormatter? formatter;
  const AuthTextField(
      {Key? key,
      this.controller,
      required this.hintText,
      this.isObscure = false,
      this.textInputAction,
      this.suffixIcon,
      this.validator,
      this.keyboardType,
      this.formatter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color2a.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.03),
                blurRadius: 10,
                offset: Offset(0, 2))
          ]),
      child: TextFormField(
        controller: controller,
        obscureText: isObscure,
        obscuringCharacter: '.',
        textAlign: TextAlign.center,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        inputFormatters: formatter != null ? [formatter!] : null,
        textInputAction: textInputAction,
        keyboardType: keyboardType,
        validator: validator,
        cursorColor: Colors.black,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          hintText: hintText,
          isDense: true,
          filled: true,
          //fillColor: Colors.white,
          hintStyle: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w500, color: greyhint),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          suffixIcon: suffixIcon ?? const SizedBox(),
          suffixIconConstraints: const BoxConstraints(maxHeight: 30),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              )),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              )),
        ),
      ),
    );
  }
}
