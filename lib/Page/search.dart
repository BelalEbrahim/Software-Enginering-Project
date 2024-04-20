// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40,),
          TextFormField(
            onChanged: (String value) {
              print(value);
            },
            decoration: InputDecoration(
              //fillColor: Color.fromRGBO(8, 176, 158, 1),
              hintText: 'Search',
              suffixIcon: Icon(Icons.search),
              suffixIconColor: Color.fromRGBO(8, 176, 158, 1),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide(color: Color.fromRGBO(8, 176, 158, 1), width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide(color: Color.fromRGBO(8, 176, 158, 1), width: 2)
            ),
            )
          ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Top searches',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w500
                ),
                ),
                SizedBox(width: 10),
            ],
          ),
          SizedBox(height: 14,),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 251, 254, 1),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color:  const Color.fromRGBO(8, 176, 158, 1),
                                width: 2
                              )
                            ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Python',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          ),
                    SizedBox(width: 9,),
                    Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 251, 254, 1),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color:  const Color.fromRGBO(8, 176, 158, 1),
                                width: 2
                              )
                            ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Java',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          ),
                    SizedBox(width: 9,),
                    Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 251, 254, 1),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color:  const Color.fromRGBO(8, 176, 158, 1),
                                width: 2
                              )
                            ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Excel',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          ),
                    SizedBox(width: 9,),
                    Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 251, 254, 1),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color:  const Color.fromRGBO(8, 176, 158, 1),
                                width: 2
                              )
                            ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Sql',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 251, 254, 1),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color:  const Color.fromRGBO(8, 176, 158, 1),
                                width: 2
                              )
                            ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'react',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          ),
                    SizedBox(width: 9,),
                    Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 251, 254, 1),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color:  const Color.fromRGBO(8, 176, 158, 1),
                                width: 2
                              )
                            ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'digital marketing',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          ),
                    SizedBox(width: 9,),
                    Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 251, 254, 1),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color:  const Color.fromRGBO(8, 176, 158, 1),
                                width: 2
                              )
                            ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'aws',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          ),
                    SizedBox(width: 9,)
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 251, 254, 1),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color:  const Color.fromRGBO(8, 176, 158, 1),
                                width: 2
                              )
                            ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'photoshop',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          ),
                    SizedBox(width: 9,),
                    Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 251, 254, 1),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color:  const Color.fromRGBO(8, 176, 158, 1),
                                width: 2
                              )
                            ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'C#',
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          ),
                    SizedBox(width: 9,),
                    Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 251, 254, 1),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color:  const Color.fromRGBO(8, 176, 158, 1),
                                width: 2
                              )
                            ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'network',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          ),
                    SizedBox(width: 9,)
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 25,),
          Container(
            height: 1,
            width: double.infinity,
            color: const Color.fromRGBO(0, 0, 0, 0.7),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Browse category',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w500
                ),
                ),
                SizedBox(width: 10),
            ],
          ),
          SizedBox(height: 10,),
          Column(
            children: [
              Row(
                children: [
                  SizedBox( width: 5,),
                  Icon(Icons.keyboard_arrow_right, size: 32, color: const Color.fromRGBO(0, 0, 0, 0.7),),
                  SizedBox(width: 4,),
                  Text(
                    'Development',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromRGBO(0, 0, 0, 0.7)
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox( width: 5,),
                  Icon(Icons.keyboard_arrow_right, size: 32, color: const Color.fromRGBO(0, 0, 0, 0.7),),
                  SizedBox(width: 4,),
                  Text(
                    'Design',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromRGBO(0, 0, 0, 0.7)
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox( width: 5,),
                  Icon(Icons.keyboard_arrow_right, size: 32, color: const Color.fromRGBO(0, 0, 0, 0.7),),
                  SizedBox(width: 4,),
                  Text(
                    'Busniss',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromRGBO(0, 0, 0, 0.7)
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox( width: 5,),
                  Icon(Icons.keyboard_arrow_right, size: 32, color: const Color.fromRGBO(0, 0, 0, 0.7),),
                  SizedBox(width: 4,),
                  Text(
                    'IT & Software',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromRGBO(0, 0, 0, 0.7)
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox( width: 5,),
                  Icon(Icons.keyboard_arrow_right, size: 32, color: const Color.fromRGBO(0, 0, 0, 0.7),),
                  SizedBox(width: 4,),
                  Text(
                    'Marketing',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromRGBO(0, 0, 0, 0.7)
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox( width: 5,),
                  Icon(Icons.keyboard_arrow_right, size: 32, color: const Color.fromRGBO(0, 0, 0, 0.7),),
                  SizedBox(width: 4,),
                  Text(
                    'Life Style',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromRGBO(0, 0, 0, 0.7)
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox( width: 5,),
                  Icon(Icons.keyboard_arrow_right, size: 32, color: const Color.fromRGBO(0, 0, 0, 0.7),),
                  SizedBox(width: 4,),
                  Text(
                    'Music',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromRGBO(0, 0, 0, 0.7)
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
            ],
          )
        ],
      ),
    );
  }
}