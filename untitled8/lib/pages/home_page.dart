import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled8/util/categorey_Card.dart';

import '../util/Doctor card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        "Jerome Bell",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: Lottie.asset('assets/Images/Animation - 1705440842789.json'),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'How do you feel?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 12,),
                          Text(
                            'Fill out your medical card right now',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 12,),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[400],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                'Get Started',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: "How can we help you?",
                  ),
                ),
              ),
            ),
            SizedBox(height: 25,),
            Container(

              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    image: "assets/Images/png-transparent-protect-teeth-protection-health-tooth-thumbnail.png",
                    categoryName: "Dentist",
                  ),
                  CategoryCard(
                    image: "assets/Images/doctor_PNG15980.png",

                    categoryName: "Surgeon",
                  ),
                  CategoryCard(
                    image: "assets/Images/download (6).jpg",
                    categoryName: "Pharmacist",
                  ),
                ],
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Doctor List",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                Text("See all",style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold),),
              ],),
            ),
            SizedBox(height: 25,),
          Expanded(child: ListView(
            scrollDirection: Axis.horizontal,
             children: [
               DoctorCard(
                   doctorImaagePath:'assets/Images/Animation - 1705440195090.json',
                 rating: '4.9',
                 doctorName: 'Dr.Ganesh Gupta',
                 dotorprofession: 'Therapist',
               ),
               DoctorCard(
                 doctorImaagePath:'assets/Images/Animation - 1705445969172.json',
                 rating: '4.4',
                 doctorName: 'Dr.Dr.ATA-UR-REHMAN Consultant',
                 dotorprofession: 'Rheumatologist ',
               ),
               DoctorCard(
                 doctorImaagePath:'assets/Images/Animation - 1705438818057.json',
                 rating: '5.0',
                 doctorName: 'Dr.Steve Jobs',
                 dotorprofession: 'Surgeon',
               ),
             ],
          ),),
          ],
        ),
      ),
    );
  }
}
