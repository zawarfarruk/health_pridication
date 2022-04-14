// ignore_for_file: prefer_const_constructors, duplicate_ignore, sized_box_for_whitespace

import 'package:flutter/material.dart';

class HeartFrom extends StatefulWidget {
  const HeartFrom({Key? key}) : super(key: key);

  @override
  State<HeartFrom> createState() => _HeartFromState();
}

class _HeartFromState extends State<HeartFrom> {
  String dropDownValue = "SELECT";
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

            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
             child: Image.asset("assets/aa.jpg", fit:BoxFit.fill),
            ),
            Card(
              elevation: 6,
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text("Age in Years"), border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Card(elevation: 6, child: Text("DropDown for Gender")),
            SizedBox(
              height: 5,
            ),
            Card(
              elevation: 6,
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text("HEIGHT (in cm)"), border: OutlineInputBorder()),
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
              child: Text("DrowpDown for Clestrol")),
            SizedBox(
              height: 5,
            ),
            Card(
              elevation: 6,
              child: Text("DropDown For Gulogose")),
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
              child: Text("Dropdown for Smoke")),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 6,
              child: Text("DropDown for Alcholo")),
              ElevatedButton(onPressed: (){},
              child: Text("Submitted"),
              )
            // DropdownButton(
            //     value: dropDownValue,
            //     icon: const Icon(Icons.arrow_drop_down_sharp),
            //     onChanged: (String? newValue) {
            //       setState(() {
            //         dropDownValue = newValue!;
            //       });
            //     },
            //     items: <String>['One', 'Two', 'Free', 'Four']
            //         .map<DropdownMenuItem<String>>((String value) {
            //       return DropdownMenuItem<String>(
            //         value: value,
            //         child: Text(value),
            //       );
            //     }).toList())
          ]),
        ),
      ),
    );
  }
}
