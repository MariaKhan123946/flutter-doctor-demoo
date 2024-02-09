import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SmartDeviceBox extends StatefulWidget {
  final String smartDeviceName;
  final String imagePath;
  final bool powerOn;
  final void Function(bool)? onChanged;

  SmartDeviceBox({
    Key? key,
    required this.smartDeviceName,
    required this.imagePath,
    required this.powerOn,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<SmartDeviceBox> createState() => _SmartDeviceBoxState();
}

class _SmartDeviceBoxState extends State<SmartDeviceBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 0),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          decoration: BoxDecoration(
            color: widget.powerOn ? Colors.grey[900] : Colors.grey[900],
            borderRadius: BorderRadius.circular(10),
          ),

          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Lottie.asset(widget.imagePath, height: 65),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: .0,),
                      child: Expanded(
                        flex: 1,
                        child: SingleChildScrollView(
                          child: Text(
                            widget.smartDeviceName,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: widget.powerOn ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Transform.rotate(
                      angle: pi / 2,
                      child: CupertinoSwitch(
                        value: widget.powerOn,
                        onChanged: widget.onChanged,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
