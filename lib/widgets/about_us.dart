// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class AboutUs extends StatelessWidget {
  const AboutUs({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("About The Orangization"),
           leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Center(
          child: Column(
            children: const [
              Text("Goals And Achievements"),
            ],
          ),
        ),
        
      ),
    );
  }
}