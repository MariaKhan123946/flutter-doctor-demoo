import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../util/my_smart_devices.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double horizontalPadding = 40;

  final double verticalPadding = 25;
  List mySmartDevices=[
    ['Smart Light',"assets/Images/Animation - 1705727707177.json",true],
    ['Smart AC','assets/Images/Animation - 1705728082541.json',false],
    ["Smart TV","assets/Images/Animation - 1705728379831.json",false],
    ["Smart Fan","assets/Images/Animation - 1705728792288.json",false],
  ];
  void powerSwitchChanged(bool value,int index){
    setState(() {
      mySmartDevices[index][2]=value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: horizontalPadding,vertical:  verticalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Lottie.asset(
                    'assets/Images/Animation - 1705729281332.json',height: 45,
                  ),//Lttie.asset
                  Icon(Icons.person,size: 45,color: Colors.grey[800],),


                ],
              ),
            ),
            SizedBox(height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome Home',style: TextStyle(fontSize: 20,color: Colors.grey[700]),),
                  Text('Amna Ghulam Hassan',  style: GoogleFonts.bebasNeue(
                      fontSize:20 ,
                  ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:horizontalPadding ),
              child: Divider(
                color: Colors.grey,
                thickness: 2,
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text('Smart Device',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.grey[800]),),
            ),
            Expanded(
              flex: 1,
              child: GridView.builder(
              itemCount: mySmartDevices.length,
              padding: EdgeInsets.all(25),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                childAspectRatio: 1/1.3
              ),
                itemBuilder: (context, index) {
                  return  SmartDeviceBox(
                      smartDeviceName:mySmartDevices[index][0],
                      imagePath:mySmartDevices[index][1],
                      powerOn:mySmartDevices[index][2],
                      onChanged:(value)=>powerSwitchChanged(value,index),
                  );
                },),),
          ],
        ),
      ),

    );
  }
}
