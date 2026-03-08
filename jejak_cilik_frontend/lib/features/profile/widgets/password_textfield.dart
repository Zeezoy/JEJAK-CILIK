import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  final bool error;

  const PasswordTextField({
    super.key,
    required this.controller,
    this.error = false,
  });

  @override 
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

  class _PasswordTextFieldState extends State<PasswordTextField> {
    bool hide = true;

    @override
    Widget build(BuildContext context) {
      return TextField(
        controller: widget.controller,
        obscureText: hide,
        decoration: InputDecoration(
          prefixIcon:  const Icon(Icons.lock),

          suffixIcon: IconButton(
            icon: Icon(
              hide ? Icons.visibility : Icons.visibility_off),
            onPressed: (){
              setState(() {
                hide = !hide;
              });
            },
            ),
            
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),

            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.red),
            ),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: widget.error ? Colors.red : Colors.grey,
              )
            )
          ),
        );
    }
  }

