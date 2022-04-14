// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class ContactUs extends StatelessWidget {
  const ContactUs({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact With The Oragnization"),
        leading: IconButton(onPressed: (){Navigator.pop(context);},
         icon: Icon(Icons.arrow_back),
      ),),
      body: Center(
        child: Column(children: const [
          Text("Contact Information"),
          SizedBox(
            height: 10,
          ),
          Text("Email Address"),
          SizedBox(
            height: 10,
          )
        ]),
      ),
    
      
    );
  }
}