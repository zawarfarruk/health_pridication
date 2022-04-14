// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class Diabetes extends StatelessWidget {
  const Diabetes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // ignore: duplicate_ignore
            appBar: AppBar(
              // ignore: prefer_const_constructors
              title: Text("Diabetes pridication Form"),
               leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
              ),
            ),
            body: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
              // ignore: sized_box_for_whitespace
              Container(
                height: 250,
                width:MediaQuery.of(context).size.width,
                child: Image.asset("assets/bb.jpg"),
              ),
              Card(
                elevation: 6,
                child: TextFormField(
                  decoration: const InputDecoration(
                      label: Text("Age in Years"),
                      border: const OutlineInputBorder()),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Card(
                  elevation: 6, child: const Text("DropDown for Gender")),
              const SizedBox(
                height: 5,
              ),
              Card(
                elevation: 6,
                child: TextFormField(
                  decoration: const InputDecoration(
                      label: Text("HEIGHT (in cm)"),
                      border: const OutlineInputBorder()),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Card(
                elevation: 6,
                child: TextFormField(
                  decoration: const InputDecoration(
                      label: Text("WEIGHT (in kg)"),
                      border: OutlineInputBorder()),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                elevation: 6,
                child: TextFormField(
                  decoration: const InputDecoration(
                      label: const Text("Systolic Blood pressure"),
                      border: const OutlineInputBorder()),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                elevation: 6,
                child: TextFormField(
                  decoration: const InputDecoration(
                      label: const Text("Systolic Blood pressure"),
                      border: const OutlineInputBorder()),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Card(
                elevation: 6,
                child: TextFormField(
                  decoration: const InputDecoration(
                      label: Text("Diastolic Blood Pressure"),
                      border: OutlineInputBorder()),
                ),
            
              ),
              ElevatedButton(onPressed: (){}, child:const Text("Submitted"))
            ])
            )
            )
            );
  }
}
