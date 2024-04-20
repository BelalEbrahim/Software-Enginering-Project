// ignore_for_file: prefer_const_constructors, unused_import, unnecessary_import

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: use_key_in_widget_constructors
class MyLearning extends StatefulWidget {



  @override
  State<MyLearning> createState() => _MyLearningState();
}

class _MyLearningState extends State<MyLearning> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        leading: Container(
          padding: const EdgeInsets.only(
            left: 9
          ),
          child: const IconButton(
          icon: Icon(Icons.shopping_cart_outlined,
          color: Color.fromRGBO(8, 176, 158, 1),
          size: 42, ),
          onPressed: null,
        ),
        ),
        
        title:Container(
          width: double.infinity,
          padding: const EdgeInsets.only(
            left: 13,
          ),
          child: const Row(
            children: [
              Expanded(
                child: IconButton(
                onPressed: null,
                 icon : Icon(Icons.search,
                 color: Color.fromRGBO(8, 176, 158, 1),
                 size: 42,)
                ),
              ),

              SizedBox(width: 170,),
              Text(
                'My Study',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          )
        ),
      ),
      body:  Column(
        children: [
          const SizedBox(height: 9,),
          // ignore: unnecessary_const
           Directionality(
            textDirection: TextDirection.rtl,
             child: Padding(
               padding: const EdgeInsets.only(right: 5, left: 5),
               child:  SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                //textDirection: TextDirection.ltr,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Color.fromRGBO(8, 176, 158, 1),
                      border: Border.fromBorderSide(
                          BorderSide(
                            color:  Color.fromRGBO(8, 176, 158, 1),
                            width: 3
                            )
                            )
                    ),
                    
                    child: const MaterialButton(
                    onPressed: null,
                    height: 44,
                    minWidth: 102,
                    child: Text(
                      'All',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ) ,
                  ),
                  const SizedBox(width: 7),
                  Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                        border: Border.fromBorderSide(
                          BorderSide(
                            color:  Color.fromRGBO(8, 176, 158, 1),
                            width: 3
                            )
                            )
                      ),
                      
                      child: const MaterialButton(
                      onPressed: null,
                      height: 44,
                      minWidth: 102,
                      child: Text(
                        'Downloaded',
                        style: TextStyle(
                          color: Color.fromRGBO(8, 176, 158, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ) ,
                    ),
                  const SizedBox(width: 7),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.white,
                      border: Border.fromBorderSide(
                        BorderSide(
                          color:  Color.fromRGBO(8, 176, 158, 1),
                          width: 3
                          )
                          )
                    ),
                    
                    child: const MaterialButton(
                    onPressed: null,
                    height: 44,
                    minWidth: 102,
                    child: Text(
                      'Favourite',
                      style: TextStyle(
                        color: Color.fromRGBO(8, 176, 158, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ) ,
                  ),
                  const SizedBox(width: 7),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.white,
                      border: Border.fromBorderSide(
                        BorderSide(
                          color:  Color.fromRGBO(8, 176, 158, 1),
                          width: 3
                          )
                          )
                    ),
                    
                    child: const MaterialButton(
                    onPressed: null,
                    height: 44,
                    minWidth: 102,
                    child: Text(
                      'Archieved',
                      style: TextStyle(
                        color: Color.fromRGBO(8, 176, 158, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ) ,
                  ),
             
                ],
              ),
               )  
             ),
           ),
           const SizedBox(height: 5),
           const Padding(
             padding: EdgeInsets.only(right: 5),
             child: Align(
              alignment: Alignment.centerRight,
              child:  Text(
              'My Courses',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
             ),
             ),
           ),
            SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.rtl,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    border: Border.all(
                      color: const Color.fromRGBO(8, 176, 158, 1)
                    )
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child:  const Image(
                      height: 68,
                      width: 76,
                      fit: BoxFit.cover,
                      image:AssetImage('Asset/1.jpg')
                      ),
                  ),
                ),
              ),
              const SizedBox(width: 9),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                  const Text(
                      'The Complete 2022 Programing Course',
                      maxLines: 2,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        height: 1,
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w700
                      ),
                      ),
                  const Text(
                    'Mohamed Tamer',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromRGBO(30, 30, 30, 0.6),
                      fontWeight: FontWeight.w300
                    ),
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Container(
                      decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromRGBO(217, 217, 217, 0.6),
                    ),
                    height: 10,
                    width: 261,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromRGBO(8, 176, 158, 1),
                    ),
                    height: 10,
                    width: 216,
                  ),
                    ],
                  ),
                  const Text(
                    'complete  85%',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromRGBO(30, 30, 30, 0.6),
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ],),
              )
            ],
           ),
           const SizedBox(height: 11),
           Container(
            color: Colors.black,
            height: 1,
            width: double.infinity,
           ),
           const SizedBox(height: 15),
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.rtl,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    border: Border.all(
                      color: const Color.fromRGBO(8, 176, 158, 1)
                    )
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child:  const Image(
                      height: 68,
                      width: 76,
                      fit: BoxFit.cover,
                      image:AssetImage('Asset/2.jpg')
                      ),
                  ),
                ),
              ),
              const SizedBox(width: 9),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                  const Text(
                      'Machine Learning NanoDegree',
                      maxLines: 2,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        height: 1,
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w700
                      ),
                      ),
                      const SizedBox(height: 10),
                  const Text(
                    'Dr. Tamer Aid',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromRGBO(30, 30, 30, 0.6),
                      fontWeight: FontWeight.w300
                    ),
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Container(
                      decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromRGBO(217, 217, 217, 0.6),
                    ),
                    height: 10,
                    width: 261,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromRGBO(8, 176, 158, 1),
                    ),
                    height: 10,
                    width: 66,
                  ),
                    ],
                  ),
                  const Text(
                    'complete  20%',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromRGBO(30, 30, 30, 0.6),
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ],),
              )
            ],
           ),
           const SizedBox(height: 11),
           Container(
            color: Colors.black,
            height: 1,
            width: double.infinity,
           ),
           const SizedBox(height: 15),
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.rtl,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    border: Border.all(
                      color: const Color.fromRGBO(8, 176, 158, 1)
                    )
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child:  const Image(
                      height: 68,
                      width: 76,
                      fit: BoxFit.cover,
                      image:AssetImage('Asset/3.jpg')
                      ),
                  ),
                ),
              ),
              const SizedBox(width: 9),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                  Text(
                      'Flutter Development & Dart First Course In Arabic',
                      maxLines: 2,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        height: 1,
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w700
                      ),
                      ),
                  
                  Text(
                    'Abdullah Mansour',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromRGBO(30, 30, 30, 0.6),
                      fontWeight: FontWeight.w300
                    ),
                  ),
                  
                  Text(
                    'Start Course',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(8, 176, 158, 1),
                      fontWeight: FontWeight.w900
                    ),
                  ),
                ],),
              )
            ],
           ),

        ],
      ),
    );
  }
}
