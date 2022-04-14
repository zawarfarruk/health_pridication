// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace


import 'package:flutter/material.dart';
import 'package:health_pridiction/widgets/about_us.dart';
import 'package:health_pridiction/widgets/contact_us.dart';
import 'package:health_pridiction/widgets/diabetes_news.dart';
import 'widgets/diabetes_form.dart';
import './widgets/heart_form.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    initialRoute: "/",
routes:{
 '/' :(content)=>MyApp(),
 '/Second':(context)=>HeartFrom(),
 '/Third':(context) => Diabetes(),
 '/Four':(context) => DaibetesNews(),
 '/Five':(context)=>AboutUs(),
 '/Six':(context) =>ContactUs()

 }
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int destinationindex=0;
  void selectDestination( int index){
setState(() {
  destinationindex=index;
});
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Main Screen")),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: [
              Container(
                height: 300,
                width: 200,
                child: Image.asset("assets/aa.jpg",fit: BoxFit.cover,),
              ),
              Divider(
                height: 1,
                thickness: 2,
              ),
              ListTile(
                leading: Icon(Icons.coronavirus),
                title: Text("Covid Pridiction"),
                selected: destinationindex==0,
                onTap: ()=>selectDestination(0),
              ),
               ListTile(
                 leading: Icon(Icons.heart_broken),
                 title:Text("Heart Pridiction"),
                 selected: destinationindex==1,
                 onTap:(){selectDestination(1);
                 Navigator.pushNamed(context,'/Second');
                 },
               ),
               ListTile(
                 leading: Icon(Icons.disabled_visible),
                 title: Text("Diabetes pridiction"),
                 selected: destinationindex==2,
                 onTap:() {
                   selectDestination(2);
                   Navigator.pushNamed(context, '/Third');
                   },
               ),
               ListTile(
                 leading: Icon(Icons.newspaper),
                 title:Text("Diabetes News"),
                 selected: destinationindex==3,
                 onTap: (){
                   selectDestination(3); 
                   Navigator.pushNamed(context,'/Four');
                   
                 }
               ),
               Divider(
                 height: 1,
                 thickness: 2,
               ),
               SizedBox(
                 height: 10,
               ),
               Text("\t\t\t\tCommunication"),
               SizedBox(
                 height: 10,
               ),
               ListTile(
                 leading: Icon(Icons.info),
                 title: Text("About Us"),
                 selected: destinationindex==4,
                 onTap: (){selectDestination(4);
                 Navigator.pushNamed(context, '/Five');
                 }
               ),
               ListTile(
                 leading: Icon(Icons.contact_page),
                 title: Text("Contact Us"),
                 selected: destinationindex==5,
                 onTap: (){selectDestination(5);
                 Navigator.pushNamed(context, '/Six');
                 }
               )
            ],
        ),
        ),
        body:GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              padding: EdgeInsets.all(20),
              childAspectRatio: 3 / 2,
              children: [
                Image.asset('assets/aa.jpg'),
                Image.asset('assets/bb.jpg'),
                Image.asset('assets/cc.jpg'),
                Image.asset('assets/dd.jpg'),
              ],
            ),
    ));
  }
}