import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DoctorCard extends StatefulWidget {
  final String doctorImaagePath;
  final String rating;
  final String doctorName;
  final String dotorprofession;
  DoctorCard({required this.doctorImaagePath, required this.rating, required this.doctorName,required this.dotorprofession});


  @override
  State<DoctorCard> createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
           decoration: BoxDecoration(
             color: Colors.deepPurple[100],
        borderRadius: BorderRadius.circular(12),
           ),
        
            child: Column(
            children: [
            SingleChildScrollView(
              child: CircleAvatar(
        
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Lottie.asset(widget.doctorImaagePath,
                    fit: BoxFit.cover,height: 100, width: 100,
                
                  ),

                        ),
              ),
            ),
        SizedBox(height:
          5,),
        Text(widget.rating),
        Text(widget.doctorName),
        Text(widget.dotorprofession),
        
        SizedBox(height: 5,),
        
           Row(children: [
          Icon(Icons.star, color: Colors.yellow[600],),
          Text('4.9',style: TextStyle(fontWeight: FontWeight.bold),),
            Text('Therapist,7 y.e'),
          ],),
            ],
        ),
        
        ),
      ),
    );
  }
}
