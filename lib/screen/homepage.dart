import 'package:flutter/material.dart';
import 'package:flutter_component/screen/all_info.dart';
import 'package:flutter_component/screen/personal_info.dart';
import 'package:flutter_component/screen/api_call.dart';
import 'package:get/get.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'information'.toUpperCase(),
              softWrap: true,
              style: TextStyle(
                color: Colors.black,
                fontSize: size.height*.05,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Colors.teal,
        ),
        body: SafeArea(
          child: Container(
            color: Colors.teal.shade200,
            height: size.height,
            width: size.width,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                       SizedBox(height: size.height*.2,),
                       GestureDetector(
                         onTap: (){
                           Get.to(()=> Personal_Info());
                         },
                          child: Container(
                            height: size.height*.1,
                            width: size.width*.7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.teal,
                            ),
                            child: Center(
                              child: Text(
                                'Personal info'.toUpperCase(),
                                softWrap: true,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.height*.04,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                       ),
                    SizedBox(height: size.height*.05,),
                    GestureDetector(
                      onTap: (){
                        Get.to(()=> All_Info());
                      },
                      child: Container(
                        height: size.height*.1,
                        width: size.width*.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.teal,
                        ),
                        child: Center(
                          child: Text(
                            'All info'.toUpperCase(),
                            softWrap: true,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: size.height*.04,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height*.05,),
                    GestureDetector(
                      onTap: (){
                        Get.to(()=> Api_Call());
                      },
                      child: Container(
                        height: size.height*.1,
                        width: size.width*.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.teal,
                        ),
                        child: Center(
                          child: Text(
                            'Api call'.toUpperCase(),
                            softWrap: true,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: size.height*.04,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
