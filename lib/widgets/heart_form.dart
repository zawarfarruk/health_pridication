// ignore_for_file: prefer_const_constructors, duplicate_ignore, sized_box_for_whitespace

import 'package:flutter/material.dart';

class HeartFrom extends StatefulWidget {
  const HeartFrom({Key? key}) : super(key: key);

  @override
  State<HeartFrom> createState() => _HeartFromState();
}

class _HeartFromState extends State<HeartFrom> {
  String? chooseValue;
  String?  chooseVaB;
  String? chooseVaC;
  String? chooseVaD;
  String? chooseVaE;
  String? chooseVaF;
  List listItem = ["Male", "Female"];
  List listItemA = ["Low", "Normal","High"];
  List listItemB = ["Yes", "No"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // ignore: dup licate_ignore
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text("Heart pridication Form"),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
               crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/dd.jpg", fit: BoxFit.fill),
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Card(
                      elevation: 6,
                      child: TextFormField(
                        decoration: InputDecoration(
                            label: Text("Age in Years"),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Card(
                        elevation: 6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Gender"),
                            DropdownButton(
                                hint: Text("Select"),
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
                    SizedBox(
                      height: 5,
                    ),
                    Card(
                      elevation: 6,
                      child: TextFormField(
                        decoration: InputDecoration(
                            label: Text("HEIGHT (in cm)"),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Card(
                      elevation: 6,
                      child: TextFormField(
                        decoration: InputDecoration(
                            label: Text("WEIGHT (in kg)"),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Card(
                        elevation: 6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Clestrol"),
                            DropdownButton(
                                hint: Text("Select"),
                                value: chooseVaB,
                                onChanged: (newValue) {
                                  setState(() {
                                    chooseVaB = (newValue).toString();
                                  });
                                },
                                items: listItemA.map((valueItem) {
                                  return DropdownMenuItem(
                                    value: valueItem,
                                    child: Text(valueItem),
                                  );
                                }).toList())
                          ],
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Card(
                        elevation: 6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Gulogose"),
                            DropdownButton(
                                hint: Text("Select"),
                                value: chooseVaC,
                                onChanged: (newValue) {
                                  setState(() {
                                    chooseVaC = (newValue).toString();
                                  });
                                },
                                items: listItemA.map((valueItem) {
                                  return DropdownMenuItem(
                                    value: valueItem,
                                    child: Text(valueItem),
                                  );
                                }).toList())
                          ],
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Card(
                      elevation: 6,
                      child: TextFormField(
                        decoration: InputDecoration(
                            label: Text("Systolic Blood pressure"),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Card(
                      elevation: 6,
                      child: TextFormField(
                        decoration: InputDecoration(
                            label: Text("Diastolic Blood Pressure"),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Card(
                        elevation: 6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Smoke"),
                            DropdownButton(
                                hint: Text("Select"),
                                value: chooseVaD,
                                onChanged: (newValue) {
                                  setState(() {
                                    chooseVaD = (newValue).toString();
                                  });
                                },
                                items: listItemB.map((valueItem) {
                                  return DropdownMenuItem(
                                    value: valueItem,
                                    child: Text(valueItem),
                                  );
                                }).toList())
                          ],
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Card(
                        elevation: 6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Alcholo"),
                            DropdownButton(
                                hint: Text("Select"),
                                value: chooseVaE,
                                onChanged: (newValue) {
                                  setState(() {
                                    chooseVaE = (newValue).toString();
                                  });
                                },
                                items: listItemB.map((valueItem) {
                                  return DropdownMenuItem(
                                    value: valueItem,
                                    child: Text(valueItem),
                                  );
                                }).toList())
                          ],
                        )),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Submitted"),
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
