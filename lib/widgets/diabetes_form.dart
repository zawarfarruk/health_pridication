// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class Diabetes extends StatefulWidget {
  const Diabetes({Key? key}) : super(key: key);

  @override
  State<Diabetes> createState() => _DiabetesState();
}

class _DiabetesState extends State<Diabetes> {
   String? chooseValue;
  List listItem = ["Male", "Female"];
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
              
          
                 Image.asset("assets/ff.jpg"),
            
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
               Card(
                  elevation: 6, child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Gender"),
                       DropdownButton(
                              hint: const Text("Select"),
                              value: chooseValue,
                              onChanged: (newValue) {
                                setState(() {
                                  chooseValue = (newValue).toString();
                                });
                              },
                              items: listItem.map((valueItem) {
                                return DropdownMenuItem(
                                  value: valueItem,
                                  child: Text(valueItem),
                                );
                              }).toList())

                    ],
                  )),
              const SizedBox(
                height: 5,
              ),
              Card(
                elevation: 6,
                child: TextFormField(
                  decoration: const InputDecoration(
                      label: Text("Gulocose"),
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
                      label: Text("BMI"),
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
                      label: const Text("2hrs Serum Insulin"),
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
