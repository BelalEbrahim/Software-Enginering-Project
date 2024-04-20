// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //SizedBox(width: 170,),
              Text(
                'Wishlist',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          )
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 8, left: 8),
        child: Column(
          children: [
            SizedBox(height: 5,),
            Container(
              height: 125,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(8, 176, 158, 1)
                ),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 12,),
                        Container(
                          width: 275,
                          child: Text(
                            'The  Complete Course Android Kotlin App',
                            maxLines: 2,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              height: 1.2,
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w900
                            ),
                            ),
                        ),
                        SizedBox(height: 6,),
                        Text(
                          'Jose  Portilla',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Color.fromRGBO(30, 30, 30, 0.5),
                          ),
                        ),
                        Row(children: [
                              Text(
                                '10\$',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900
                                ),
                                ),
                              SizedBox(width: 55,),
                              Icon(Icons.star_border,
                                  color: Color.fromRGBO(251, 181, 0, 1), size: 20,),
                              Icon(Icons.star, color: Color.fromRGBO(251, 181, 0, 1), size: 20,),
                              Icon(Icons.star, color: Color.fromRGBO(251, 181, 0, 1), size: 20,),
                              Icon(Icons.star, color: Color.fromRGBO(251, 181, 0, 1), size: 20,),
                              Icon(Icons.star, color: Color.fromRGBO(251, 181, 0, 1), size: 20,),
                            ]),
                      ],
                    ),
                  ),
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
                        height: 104,
                        width: 100,
                        fit: BoxFit.fill,
                        image:AssetImage('Asset/5.png')
                        ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12,),
            Container(
              height: 125,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(8, 176, 158, 1)
                ),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 12,),
                        Container(
                          width: 275,
                          child: Text(
                            'The  Complete Course Sql DataBase',
                            maxLines: 2,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              height: 1.2,
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w900
                            ),
                            ),
                        ),
                        SizedBox(height: 6,),
                        Text(
                          'Denis PanJuta',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Color.fromRGBO(30, 30, 30, 0.5),
                          ),
                        ),
                        Row(children: [
                              Text(
                                '30\$',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900
                                ),
                                ),
                              SizedBox(width: 55,),
                              Icon(Icons.star_border,
                                  color: Color.fromRGBO(251, 181, 0, 1), size: 20,),
                              Icon(Icons.star_border, color: Color.fromRGBO(251, 181, 0, 1), size: 20,),
                              Icon(Icons.star, color: Color.fromRGBO(251, 181, 0, 1), size: 20,),
                              Icon(Icons.star, color: Color.fromRGBO(251, 181, 0, 1), size: 20,),
                              Icon(Icons.star, color: Color.fromRGBO(251, 181, 0, 1), size: 20,),
                            ]),
                      ],
                    ),
                  ),
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
                        height: 104,
                        width: 100,
                        fit: BoxFit.fill,
                        image:AssetImage('Asset/6.jpeg')
                        ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12,),
            Container(
              height: 125,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(8, 176, 158, 1)
                ),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 12,),
                        Container(
                          width: 275,
                          child: Text(
                            'Learn Ethical Hacking From Zero To Hero',
                            maxLines: 2,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              height: 1.2,
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w900
                            ),
                            ),
                        ),
                        SizedBox(height: 6,),
                        Text(
                          'Zaid Sabih',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Color.fromRGBO(30, 30, 30, 0.5),
                          ),
                        ),
                        Row(children: [
                              Text(
                                '10\$',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900
                                ),
                                ),
                              SizedBox(width: 55,),
                              Icon(Icons.star,
                                  color: Color.fromRGBO(251, 181, 0, 1), size: 20,),
                              Icon(Icons.star, color: Color.fromRGBO(251, 181, 0, 1), size: 20,),
                              Icon(Icons.star, color: Color.fromRGBO(251, 181, 0, 1), size: 20,),
                              Icon(Icons.star, color: Color.fromRGBO(251, 181, 0, 1), size: 20,),
                              Icon(Icons.star, color: Color.fromRGBO(251, 181, 0, 1), size: 20,),
                            ]),
                      ],
                    ),
                  ),
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
                        height: 104,
                        width: 100,
                        fit: BoxFit.fill,
                        image:AssetImage('Asset/7.jpg')
                        ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Text(
              'Add New Courses To Your Wishlist',
              style: TextStyle(
                color: Color.fromRGBO(8, 176, 158, 1),
                fontSize: 24,
                fontWeight: FontWeight.w900
              ),
            ),
          ],
        ),
      ),
    );
  }
}