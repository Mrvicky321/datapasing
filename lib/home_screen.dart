import 'package:datapasing/product_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var nameController =TextEditingController();
  var emailController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          TextField(
            controller:nameController ,
            decoration: InputDecoration(hintText: "Enter Name",border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)))),
          ),
          TextField(
            controller:emailController ,
            decoration: InputDecoration(hintText: "Enter Email",border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25)))),
          ),
          ElevatedButton(onPressed: () async{

             var result =await Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen(name:nameController.text,age: 10,email: emailController.text,),));
             if(result != "" && result !=null)
               {
                 nameController.text=result;
                 setState(() {

                 });
               }
          }, child: Text("Go To Product Screen")),
        ],
      ),
    ));
  }
}
