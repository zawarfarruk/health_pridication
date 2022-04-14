import 'package:flutter/material.dart';

class DaibetesNews extends StatelessWidget {
  const DaibetesNews({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Diabetes News"),
           leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Column(
          children: const [],
        ),
        //Also Grid VIEW ADD
      ),
    );
  }
}