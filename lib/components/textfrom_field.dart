import 'package:flutter/material.dart';

class Textfromfieldscreen extends StatelessWidget {
  const Textfromfieldscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
        errorStyle: TextStyle(height: 0.3,),
          border: OutlineInputBorder(
            
            borderRadius: BorderRadius.circular(25),
            
          ),
        ),
      ),
    );
  }
}
