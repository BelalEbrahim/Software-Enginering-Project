// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        leading:
           Container(
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
        
        title:Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Text(
                'Welcome, Username',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),
              ),
            IconButton(
              onPressed: null,
               icon: Icon(Icons.account_circle_outlined, size: 42, color: Color.fromRGBO(0, 0, 0, 0.6),),
               )
        ],
        )
          ) ,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: 
           Column(
        children: [
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 17),
                child: Text(
                  'Top Rated',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold 
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Directionality(
            textDirection: TextDirection.rtl,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 10,),
                    Container(
                width: 212,
                height: 254,
                color: const Color.fromRGBO(255, 251, 254, 1),
                child: Column(
                  children: [
                    SizedBox(height: 11,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(
                          color: const Color.fromRGBO(8, 176, 158, 1)
                        )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:  const Image(
                            height: 123,
                            width: 212,
                            fit: BoxFit.cover,
                            image:AssetImage('Asset/1.jpg')
                            ),
                        ),
                    ),
                    SizedBox(height: 9,),
                    Text(
                      'The complete android developer course &  All thing about it',
                      maxLines: 2,
                      textDirection: TextDirection.ltr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 9,),
                    Expanded(
                      child: Row(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 35,),
                          Text(
                            '60.0\$',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(width: 34,),
                          Column(
                            children: [
                              Text(
                                'Abbas masri',
                                style: TextStyle(
                                  color: const Color.fromRGBO(111, 111, 111, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   SizedBox(width: 3,),
                                   Text(
                                    '4.9',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(251, 181, 0, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                    ),
                                   ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                          ),
                    SizedBox(width: 30,),
                    Container(
                width: 212,
                height: 254,
                color: const Color.fromRGBO(255, 251, 254, 1),
                child: Column(
                  children: [
                    SizedBox(height: 11,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(
                          color: const Color.fromRGBO(8, 176, 158, 1)
                        )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:  const Image(
                            height: 123,
                            width: 212,
                            fit: BoxFit.cover,
                            image:AssetImage('Asset/1.jpg')
                            ),
                        ),
                    ),
                    SizedBox(height: 9,),
                    Text(
                      'The complete android developer course &  All thing about it',
                      maxLines: 2,
                      textDirection: TextDirection.ltr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 9,),
                    Expanded(
                      child: Row(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 35,),
                          Text(
                            '60.0\$',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(width: 34,),
                          Column(
                            children: [
                              Text(
                                'Abbas masri',
                                style: TextStyle(
                                  color: const Color.fromRGBO(111, 111, 111, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   SizedBox(width: 3,),
                                   Text(
                                    '4.9',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(251, 181, 0, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                    ),
                                   ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                          ),
                    SizedBox(width: 30,),
                    Container(
                width: 212,
                height: 254,
                color: const Color.fromRGBO(255, 251, 254, 1),
                child: Column(
                  children: [
                    SizedBox(height: 11,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(
                          color: const Color.fromRGBO(8, 176, 158, 1)
                        )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:  const Image(
                            height: 123,
                            width: 212,
                            fit: BoxFit.cover,
                            image:AssetImage('Asset/1.jpg')
                            ),
                        ),
                    ),
                    SizedBox(height: 9,),
                    Text(
                      'The complete android developer course &  All thing about it',
                      maxLines: 2,
                      textDirection: TextDirection.ltr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 9,),
                    Expanded(
                      child: Row(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 35,),
                          Text(
                            '60.0\$',
                            
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(width: 34,),
                          Column(
                            children: [
                              Text(
                                'Abbas masri',
                                style: TextStyle(
                                  color: const Color.fromRGBO(111, 111, 111, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   SizedBox(width: 3,),
                                   Text(
                                    '4.9',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(251, 181, 0, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                    ),
                                   ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                          ),
                    SizedBox(width: 30,),
                    Container(
                width: 212,
                height: 254,
                color: const Color.fromRGBO(255, 251, 254, 1),
                child: Column(
                  children: [
                    SizedBox(height: 11,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(
                          color: const Color.fromRGBO(8, 176, 158, 1)
                        )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:  const Image(
                            height: 123,
                            width: 212,
                            fit: BoxFit.cover,
                            image:AssetImage('Asset/1.jpg')
                            ),
                        ),
                    ),
                    SizedBox(height: 9,),
                    Text(
                      'The complete android developer course &  All thing about it',
                      maxLines: 2,
                      textDirection: TextDirection.ltr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 9,),
                    Expanded(
                      child: Row(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 35,),
                          Text(
                            '60.0\$',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(width: 34,),
                          Column(
                            children: [
                              Text(
                                'Abbas masri',
                                style: TextStyle(
                                  color: const Color.fromRGBO(111, 111, 111, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   SizedBox(width: 3,),
                                   Text(
                                    '4.9',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(251, 181, 0, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                    ),
                                   ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                          ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
            ),
          SizedBox(height: 5,),
          Padding(
             padding: const EdgeInsets.only( left: 17, right: 17),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(
                    'Sea all',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(8, 176, 158, 1)
                    ),
                  ),
                ),
               Text(
                    'Category',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold 
                    ),
                  ),
              ],
            ),
           ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 9, left: 9),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
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
                            'Design',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                        SizedBox(width: 5,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              color:  const Color.fromRGBO(8, 176, 158, 1),
                              width: 2
                            )
                          ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Development',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              color:  const Color.fromRGBO(8, 176, 158, 1),
                              width: 2
                            )
                          ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Business',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              color:  const Color.fromRGBO(8, 176, 158, 1),
                              width: 2
                            )
                          ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'IT',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        ),
                        SizedBox(width: 5,),
                      ],
                    ),
                    SizedBox(height: 12,),
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
                            'Music',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              color:  const Color.fromRGBO(8, 176, 158, 1),
                              width: 2
                            )
                          ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Fitness',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              color:  const Color.fromRGBO(8, 176, 158, 1),
                              width: 2
                            )
                          ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Markting',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              color:  const Color.fromRGBO(8, 176, 158, 1),
                              width: 2
                            )
                          ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'LifeStyle',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              color:  const Color.fromRGBO(8, 176, 158, 1),
                              width: 2
                            )
                          ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Finance',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        ),
                        SizedBox(width: 5,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 17),
                child: Text(
                  'Popular for Android\nDevelopers',
                  textAlign: TextAlign.left,
                  
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold 
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Directionality(
            textDirection: TextDirection.rtl,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 10,),
                    Container(
                width: 212,
                height: 254,
                color: const Color.fromRGBO(255, 251, 254, 1),
                child: Column(
                  children: [
                    SizedBox(height: 11,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(
                          color: const Color.fromRGBO(8, 176, 158, 1)
                        )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:  const Image(
                            height: 123,
                            width: 212,
                            fit: BoxFit.cover,
                            image:AssetImage('Asset/2.jpg')
                            ),
                        ),
                    ),
                    SizedBox(height: 9,),
                    Text(
                      'The complete android developer course &  All thing about it',
                      maxLines: 2,
                      textDirection: TextDirection.ltr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 9,),
                    Expanded(
                      child: Row(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 35,),
                          Text(
                            '60.0\$',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(width: 34,),
                          Column(
                            children: [
                              Text(
                                'Abbas masri',
                                style: TextStyle(
                                  color: const Color.fromRGBO(111, 111, 111, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   SizedBox(width: 3,),
                                   Text(
                                    '4.9',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(251, 181, 0, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                    ),
                                   ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                          ),
                    SizedBox(width: 30,),
                    Container(
                width: 212,
                height: 254,
                color: const Color.fromRGBO(255, 251, 254, 1),
                child: Column(
                  children: [
                    SizedBox(height: 11,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(
                          color: const Color.fromRGBO(8, 176, 158, 1)
                        )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:  const Image(
                            height: 123,
                            width: 212,
                            fit: BoxFit.cover,
                            image:AssetImage('Asset/2.jpg')
                            ),
                        ),
                    ),
                    SizedBox(height: 9,),
                    Text(
                      'The complete android developer course &  All thing about it',
                      maxLines: 2,
                      textDirection: TextDirection.ltr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 9,),
                    Expanded(
                      child: Row(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 35,),
                          Text(
                            '60.0\$',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(width: 34,),
                          Column(
                            children: [
                              Text(
                                'Abbas masri',
                                style: TextStyle(
                                  color: const Color.fromRGBO(111, 111, 111, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   SizedBox(width: 3,),
                                   Text(
                                    '4.9',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(251, 181, 0, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                    ),
                                   ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                          ),
                    SizedBox(width: 30,),
                    Container(
                width: 212,
                height: 254,
                color: const Color.fromRGBO(255, 251, 254, 1),
                child: Column(
                  children: [
                    SizedBox(height: 11,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(
                          color: const Color.fromRGBO(8, 176, 158, 1)
                        )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:  const Image(
                            height: 123,
                            width: 212,
                            fit: BoxFit.cover,
                            image:AssetImage('Asset/2.jpg')
                            ),
                        ),
                    ),
                    SizedBox(height: 9,),
                    Text(
                      'The complete android developer course &  All thing about it',
                      maxLines: 2,
                      textDirection: TextDirection.ltr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 9,),
                    Expanded(
                      child: Row(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 35,),
                          Text(
                            '60.0\$',
                            
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(width: 34,),
                          Column(
                            children: [
                              Text(
                                'Abbas masri',
                                style: TextStyle(
                                  color: const Color.fromRGBO(111, 111, 111, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   SizedBox(width: 3,),
                                   Text(
                                    '4.9',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(251, 181, 0, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                    ),
                                   ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                          ),
                    SizedBox(width: 30,),
                    Container(
                width: 212,
                height: 254,
                color: const Color.fromRGBO(255, 251, 254, 1),
                child: Column(
                  children: [
                    SizedBox(height: 11,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(
                          color: const Color.fromRGBO(8, 176, 158, 1)
                        )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:  const Image(
                            height: 123,
                            width: 212,
                            fit: BoxFit.cover,
                            image:AssetImage('Asset/2.jpg')
                            ),
                        ),
                    ),
                    SizedBox(height: 9,),
                    Text(
                      'The complete android developer course &  All thing about it',
                      maxLines: 2,
                      textDirection: TextDirection.ltr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 9,),
                    Expanded(
                      child: Row(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 35,),
                          Text(
                            '60.0\$',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(width: 34,),
                          Column(
                            children: [
                              Text(
                                'Abbas masri',
                                style: TextStyle(
                                  color: const Color.fromRGBO(111, 111, 111, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   SizedBox(width: 3,),
                                   Text(
                                    '4.9',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(251, 181, 0, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                    ),
                                   ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                          ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
            ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 17),
                child: Text(
                  'Popular for Web\nDevelopers',
                  textAlign: TextAlign.left,
                  
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold 
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Directionality(
            textDirection: TextDirection.rtl,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 10,),
                    Container(
                width: 212,
                height: 254,
                color: const Color.fromRGBO(255, 251, 254, 1),
                child: Column(
                  children: [
                    SizedBox(height: 11,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(
                          color: const Color.fromRGBO(8, 176, 158, 1)
                        )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:  const Image(
                            height: 123,
                            width: 212,
                            fit: BoxFit.cover,
                            image:AssetImage('Asset/3.jpg')
                            ),
                        ),
                    ),
                    SizedBox(height: 9,),
                    Text(
                      'The complete android developer course &  All thing about it',
                      maxLines: 2,
                      textDirection: TextDirection.ltr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 9,),
                    Expanded(
                      child: Row(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 35,),
                          Text(
                            '60.0\$',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(width: 34,),
                          Column(
                            children: [
                              Text(
                                'Abbas masri',
                                style: TextStyle(
                                  color: const Color.fromRGBO(111, 111, 111, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   SizedBox(width: 3,),
                                   Text(
                                    '4.9',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(251, 181, 0, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                    ),
                                   ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                          ),
                    SizedBox(width: 30,),
                    Container(
                width: 212,
                height: 254,
                color: const Color.fromRGBO(255, 251, 254, 1),
                child: Column(
                  children: [
                    SizedBox(height: 11,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(
                          color: const Color.fromRGBO(8, 176, 158, 1)
                        )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:  const Image(
                            height: 123,
                            width: 212,
                            fit: BoxFit.cover,
                            image:AssetImage('Asset/3.jpg')
                            ),
                        ),
                    ),
                    SizedBox(height: 9,),
                    Text(
                      'The complete android developer course &  All thing about it',
                      maxLines: 2,
                      textDirection: TextDirection.ltr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 9,),
                    Expanded(
                      child: Row(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 35,),
                          Text(
                            '60.0\$',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(width: 34,),
                          Column(
                            children: [
                              Text(
                                'Abbas masri',
                                style: TextStyle(
                                  color: const Color.fromRGBO(111, 111, 111, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   SizedBox(width: 3,),
                                   Text(
                                    '4.9',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(251, 181, 0, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                    ),
                                   ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                          ),
                    SizedBox(width: 30,),
                    Container(
                width: 212,
                height: 254,
                color: const Color.fromRGBO(255, 251, 254, 1),
                child: Column(
                  children: [
                    SizedBox(height: 11,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(
                          color: const Color.fromRGBO(8, 176, 158, 1)
                        )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:  const Image(
                            height: 123,
                            width: 212,
                            fit: BoxFit.cover,
                            image:AssetImage('Asset/3.jpg')
                            ),
                        ),
                    ),
                    SizedBox(height: 9,),
                    Text(
                      'The complete android developer course &  All thing about it',
                      maxLines: 2,
                      textDirection: TextDirection.ltr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 9,),
                    Expanded(
                      child: Row(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 35,),
                          Text(
                            '60.0\$',
                            
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(width: 34,),
                          Column(
                            children: [
                              Text(
                                'Abbas masri',
                                style: TextStyle(
                                  color: const Color.fromRGBO(111, 111, 111, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   SizedBox(width: 3,),
                                   Text(
                                    '4.9',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(251, 181, 0, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                    ),
                                   ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                          ),
                    SizedBox(width: 30,),
                    Container(
                width: 212,
                height: 254,
                color: const Color.fromRGBO(255, 251, 254, 1),
                child: Column(
                  children: [
                    SizedBox(height: 11,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(
                          color: const Color.fromRGBO(8, 176, 158, 1)
                        )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:  const Image(
                            height: 123,
                            width: 212,
                            fit: BoxFit.cover,
                            image:AssetImage('Asset/3.jpg')
                            ),
                        ),
                    ),
                    SizedBox(height: 9,),
                    Text(
                      'The complete android developer course &  All thing about it',
                      maxLines: 2,
                      textDirection: TextDirection.ltr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 9,),
                    Expanded(
                      child: Row(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 35,),
                          Text(
                            '60.0\$',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(width: 34,),
                          Column(
                            children: [
                              Text(
                                'Abbas masri',
                                style: TextStyle(
                                  color: const Color.fromRGBO(111, 111, 111, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   SizedBox(width: 3,),
                                   Text(
                                    '4.9',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(251, 181, 0, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                    ),
                                   ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                          ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
            ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 17),
                child: Text(
                  'Some courses about\nHacking',
                  textAlign: TextAlign.left,  
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold 
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Directionality(
            textDirection: TextDirection.rtl,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 10,),
                    Container(
                width: 212,
                height: 254,
                color: const Color.fromRGBO(255, 251, 254, 1),
                child: Column(
                  children: [
                    SizedBox(height: 11,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(
                          color: const Color.fromRGBO(8, 176, 158, 1)
                        )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:  const Image(
                            height: 123,
                            width: 212,
                            fit: BoxFit.cover,
                            image:AssetImage('Asset/4.png')
                            ),
                        ),
                    ),
                    SizedBox(height: 9,),
                    Text(
                      'The complete android developer course &  All thing about it',
                      maxLines: 2,
                      textDirection: TextDirection.ltr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 9,),
                    Expanded(
                      child: Row(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 35,),
                          Text(
                            '60.0\$',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(width: 34,),
                          Column(
                            children: [
                              Text(
                                'Abbas masri',
                                style: TextStyle(
                                  color: const Color.fromRGBO(111, 111, 111, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   SizedBox(width: 3,),
                                   Text(
                                    '4.9',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(251, 181, 0, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                    ),
                                   ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                          ),
                    SizedBox(width: 30,),
                    Container(
                width: 212,
                height: 254,
                color: const Color.fromRGBO(255, 251, 254, 1),
                child: Column(
                  children: [
                    SizedBox(height: 11,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(
                          color: const Color.fromRGBO(8, 176, 158, 1)
                        )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:  const Image(
                            height: 123,
                            width: 212,
                            fit: BoxFit.cover,
                            image:AssetImage('Asset/4.png')
                            ),
                        ),
                    ),
                    SizedBox(height: 9,),
                    Text(
                      'The complete android developer course &  All thing about it',
                      maxLines: 2,
                      textDirection: TextDirection.ltr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 9,),
                    Expanded(
                      child: Row(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 35,),
                          Text(
                            '60.0\$',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(width: 34,),
                          Column(
                            children: [
                              Text(
                                'Abbas masri',
                                style: TextStyle(
                                  color: const Color.fromRGBO(111, 111, 111, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   SizedBox(width: 3,),
                                   Text(
                                    '4.9',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(251, 181, 0, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                    ),
                                   ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                          ),
                    SizedBox(width: 30,),
                    Container(
                width: 212,
                height: 254,
                color: const Color.fromRGBO(255, 251, 254, 1),
                child: Column(
                  children: [
                    SizedBox(height: 11,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(
                          color: const Color.fromRGBO(8, 176, 158, 1)
                        )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:  const Image(
                            height: 123,
                            width: 212,
                            fit: BoxFit.cover,
                            image:AssetImage('Asset/4.png')
                            ),
                        ),
                    ),
                    SizedBox(height: 9,),
                    Text(
                      'The complete android developer course &  All thing about it',
                      maxLines: 2,
                      textDirection: TextDirection.ltr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 9,),
                    Expanded(
                      child: Row(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 35,),
                          Text(
                            '60.0\$',
                            
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(width: 34,),
                          Column(
                            children: [
                              Text(
                                'Abbas masri',
                                style: TextStyle(
                                  color: const Color.fromRGBO(111, 111, 111, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   SizedBox(width: 3,),
                                   Text(
                                    '4.9',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(251, 181, 0, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                    ),
                                   ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                          ),
                    SizedBox(width: 30,),
                    Container(
                width: 212,
                height: 254,
                color: const Color.fromRGBO(255, 251, 254, 1),
                child: Column(
                  children: [
                    SizedBox(height: 11,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(
                          color: const Color.fromRGBO(8, 176, 158, 1)
                        )
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:  const Image(
                            height: 123,
                            width: 212,
                            fit: BoxFit.cover,
                            image:AssetImage('Asset/4.png')
                            ),
                        ),
                    ),
                    SizedBox(height: 9,),
                    Text(
                      'The complete android developer course &  All thing about it',
                      maxLines: 2,
                      textDirection: TextDirection.ltr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 9,),
                    Expanded(
                      child: Row(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 35,),
                          Text(
                            '60.0\$',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(width: 34,),
                          Column(
                            children: [
                              Text(
                                'Abbas masri',
                                style: TextStyle(
                                  color: const Color.fromRGBO(111, 111, 111, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   Icon(Icons.star_rate,
                                  size: 14,
                                  color: const Color.fromRGBO(251, 181, 0, 1),
                                  ),
                                   SizedBox(width: 3,),
                                   Text(
                                    '4.9',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(251, 181, 0, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                    ),
                                   ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                          ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
            ),
          SizedBox(height: 15,)
        ],
      ),  
      )
    );
  }
}