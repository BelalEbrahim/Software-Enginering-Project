import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      stream: FirebaseFirestore.instance.collection('Categories').doc('categoryDocId').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot<Map<String, dynamic>>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          // Assuming your documents in the "Categories" collection have a field named "name"
          Map<String, dynamic>? data = snapshot.data!.data();
          if (data == null || data.isEmpty) {
            return const Text('No data available');
          }
          List<dynamic> categories = data['categories'];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCategoryHeader(),
              const SizedBox(height: 10),
              _buildCategoryItems(categories),
              const SizedBox(height: 20),
            ],
          );
        }
      },
    );
  }

  Widget _buildCategoryHeader() {
    return Padding(
      padding: const EdgeInsets.only(left: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Category',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Container(
              height: 2,
              color: const Color.fromRGBO(8, 176, 158, 1),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItems(List<dynamic> categories) {
    return Padding(
      padding: const EdgeInsets.only(right: 9, left: 9),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: categories.map((category) {
              String categoryName = category['name'] ?? 'Category Name';
              return CategoryItem(name: categoryName);
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String name;

  const CategoryItem({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: const Color.fromRGBO(8, 176, 158, 1),
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          name,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}


// =================================================================================
// =================================================================================
// =================================================================================


// class TopRatedWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         const Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               'Top Rated',
//               style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(width: 10),
//           ],
//         ),
//         const SizedBox(height: 10),
//         StreamBuilder(
//           stream: FirebaseFirestore.instance.collection('Top').snapshots(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const CircularProgressIndicator();
//             }
//             if (snapshot.hasError) {
//               return Text('Error: ${snapshot.error}');
//             }
//             // If the connection is active and no error occurred, display the data
//             return Directionality(
//               textDirection: TextDirection.rtl,
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     const SizedBox(width: 10),
//                     if (snapshot.data?.docs != null)
//                       for (var doc in snapshot.data!.docs)
//                         Container(
//                           width: 212,
//                           height: 254,
//                           color: const Color.fromRGBO(255, 251, 254, 1),
//                           child: Column(
//                             children: [
//                               const SizedBox(height: 11),
//                               Container(
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(11),
//                                   border: Border.all(
//                                     color: const Color.fromRGBO(8, 176, 158, 1),
//                                   ),
//                                 ),
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(10),
//                                   child: Image.network(
//                                     doc['imageURL'], // Assuming 'imageURL' is the field name for image URL in your Firestore document
//                                     height: 123,
//                                     width: 212,
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(height: 9),
//                               Text(
//                                 doc['title'], // Assuming 'title' is the field name for the title in your Firestore document
//                                 maxLines: 2,
//                                 overflow: TextOverflow.ellipsis,
//                                 style: const TextStyle(
//                                   height: 1.2,
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.w700,
//                                 ),
//                               ),
//                               const SizedBox(height: 9),
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   const SizedBox(width: 35),
//                                   Text(
//                                     doc['price'], // Assuming 'price' is the field name for the price in your Firestore document
//                                     style: const TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.w700,
//                                     ),
//                                   ),
//                                   const SizedBox(width: 34),
//                                   Column(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         doc['author'], // Assuming 'author' is the field name for the author in your Firestore document
//                                         style: const TextStyle(
//                                           color: Color.fromRGBO(111, 111, 111, 1),
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.w700,
//                                         ),
//                                       ),
//                                       Row(
//                                         children: [
//                                           const Icon(
//                                             Icons.star_rate,
//                                             size: 14,
//                                             color: Color.fromRGBO(251, 181, 0, 1),
//                                           ),
//                                           // Add star rating here if available in your document
//                                           const SizedBox(width: 3),
//                                           Text(
//                                             doc['rating'], // Assuming 'rating' is the field name for the rating in your Firestore document
//                                             style: const TextStyle(
//                                               color: Color.fromRGBO(251, 181, 0, 1),
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.w500,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                     const SizedBox(width: 10),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//         const SizedBox(height: 5),
//         const Padding(
//           padding: EdgeInsets.only(left: 17, right: 17),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Expanded(
//                 child: Text(
//                   'See all',
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w700,
//                     color: Color.fromRGBO(8, 176, 158, 1),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// =================================================================================
// =================================================================================
// =================================================================================





// class PopularForWebWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         SizedBox(width: 10),
//         Padding(
//           padding: const EdgeInsets.only(right: 17),
//           child: Text(
//             'Popular for Web\nDevelopers',
//             textAlign: TextAlign.left,
//             maxLines: 2,
//             style: TextStyle(
//               fontSize: 30,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         SizedBox(height: 10),
//         StreamBuilder<List<DocumentSnapshot>>(
//           stream: FirebaseFirestore.instance.collection('web').snapshots(),
//           builder: (context, AsyncSnapshot<List<DocumentSnapshot>> snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return CircularProgressIndicator(); // Show a loading indicator while data is being fetched
//             } else if (snapshot.hasError) {
//               return Text('Error: ${snapshot.error}'); // Show an error message if there's an error
//             } else {
//               // If data is successfully fetched, build the widget
//               final documents = snapshot.data!;
//               return Directionality(
//                 textDirection: TextDirection.rtl,
//                 child: SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: documents.map((doc) {
//                       // Assuming each document contains necessary fields
//                       final name = doc['name'] ?? '';
//                       final imageURL = doc['imageURL'] ?? '';
//                       final price = doc['price'] ?? '';
//                       final instructor = doc['instructor'] ?? '';
//                       final rating = doc['rating'] ?? '';
//
//                       return SizedBox(
//                         width: 10,
//                         child: Container(
//                           width: 212,
//                           height: 254,
//                           color: const Color.fromRGBO(255, 251, 254, 1),
//                           child: Column(
//                             children: [
//                               SizedBox(height: 11),
//                               Container(
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(11),
//                                   border: Border.all(
//                                     color: const Color.fromRGBO(8, 176, 158, 1),
//                                   ),
//                                 ),
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(10),
//                                   child: Image.network(
//                                     imageURL,
//                                     height: 123,
//                                     width: 212,
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(height: 9),
//                               Text(
//                                 name,
//                                 maxLines: 2,
//                                 overflow: TextOverflow.ellipsis,
//                                 textAlign: TextAlign.start,
//                                 style: TextStyle(
//                                   height: 1.2,
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.w700,
//                                 ),
//                               ),
//                               SizedBox(height: 9),
//                               Expanded(
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     SizedBox(width: 35),
//                                     Text(
//                                       '$price\$',
//                                       style: TextStyle(
//                                         color: Colors.black,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.w700,
//                                       ),
//                                     ),
//                                     SizedBox(width: 34),
//                                     Column(
//                                       children: [
//                                         Text(
//                                           instructor,
//                                           style: TextStyle(
//                                             color: const Color.fromRGBO(111, 111, 111, 1),
//                                             fontSize: 16,
//                                             fontWeight: FontWeight.w700,
//                                           ),
//                                         ),
//                                         Row(
//                                           children: [
//                                             Icon(
//                                               Icons.star_rate,
//                                               size: 14,
//                                               color: const Color.fromRGBO(251, 181, 0, 1),
//                                             ),
//                                             Icon(
//                                               Icons.star_rate,
//                                               size: 14,
//                                               color: const Color.fromRGBO(251, 181, 0, 1),
//                                             ),
//                                             Icon(
//                                               Icons.star_rate,
//                                               size: 14,
//                                               color: const Color.fromRGBO(251, 181, 0, 1),
//                                             ),
//                                             Icon(
//                                               Icons.star_rate,
//                                               size: 14,
//                                               color: const Color.fromRGBO(251, 181, 0, 1),
//                                             ),
//                                             Icon(
//                                               Icons.star_rate,
//                                               size: 14,
//                                               color: const Color.fromRGBO(251, 181, 0, 1),
//                                             ),
//                                             SizedBox(width: 3),
//                                             Text(
//                                               '$rating',
//                                               style: TextStyle(
//                                                 color: const Color.fromRGBO(251, 181, 0, 1),
//                                                 fontSize: 14,
//                                                 fontWeight: FontWeight.w500,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     }).toList(),
//                   ),
//                 ),
//               );
//             }
//           },
//         ),
//         SizedBox(height: 10),
//         SizedBox(height: 15),
//       ],
//     );
//   }
// }

// =================================================================================
// =================================================================================
// =================================================================================

class PopularForWebWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(width: 10),
        _buildTitle(),
        const SizedBox(height: 10),
        _buildCoursesList(),
        const SizedBox(height: 15),
      ],
    );
  }

  Widget _buildTitle() {
    return const Padding(
      padding: EdgeInsets.only(right: 17),
      child: Text(
        'Popular for Web\nDevelopers',
        textAlign: TextAlign.left,
        maxLines: 2,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildCoursesList() {
    return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      stream: FirebaseFirestore.instance.collection('web').doc('courses').snapshots(),
      builder: (context, AsyncSnapshot<DocumentSnapshot<Map<String, dynamic>>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return _buildCourses(snapshot.data!);
        }
      },
    );
  }

  Widget _buildCourses(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data();
    final courses = data?['courses'] as List<dynamic> ?? [];
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: courses.map((course) => _buildCourseCard(course)).toList(),
        ),
        ),
    );
  }

  Widget _buildCourseCard(Map<String, dynamic> courseData) {
    final name = courseData['name'] ?? '';
    final imageURL = courseData['imageURL'] ?? '';
    final price = courseData['price'] ?? '';
    final instructor = courseData['instructor'] ?? '';
    final rating = courseData['rating'] ?? '';

    return SizedBox(
      width: 10,
      child: Container(
        width: 212,
        height: 254,
        color: const Color.fromRGBO(255, 251, 254, 1),
        child: Column(
          children: [
            const SizedBox(height: 11),
            _buildCourseImage(imageURL),
            const SizedBox(height: 9),
            _buildCourseName(name),
            const SizedBox(height: 9),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 35),
                  _buildCoursePrice(price),
                  const SizedBox(width: 34),
                  _buildCourseDetails(instructor, rating),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCourseImage(String imageURL) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        border: Border.all(
          color: const Color.fromRGBO(8, 176, 158, 1),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          imageURL,
          height: 123,
          width: 212,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildCourseName(String name) {
    return Text(
      name,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.start,
      style: const TextStyle(
        height: 1.2,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _buildCoursePrice(String price) {
    return Text(
      '$price\$',
      style: const TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _buildCourseDetails(String instructor, String rating) {
    return Column(
      children: [
        Text(
          instructor,
          style: const TextStyle(
            color: Color.fromRGBO(111, 111, 111, 1),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        Row(
          children: [
            _buildStarIcon(),
            const SizedBox(width: 3),
            Text(
              rating,
              style: const TextStyle(
                color: Color.fromRGBO(251, 181, 0, 1),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildStarIcon() {
    return Row(
      children: List.generate(
        5,
            (index) => const Icon(
          Icons.star_rate,
          size: 14,
          color: Color.fromRGBO(251, 181, 0, 1),
        ),
      ).toList(),
    );
  }
}

// =================================================================================
// =================================================================================
// =================================================================================

class TopRatedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _buildTitleRow(),
        const SizedBox(height: 10),
        _buildTopRatedItemsStream(),
        const SizedBox(height: 5),
        _buildSeeAllRow(),
      ],
    );
  }

  Widget _buildTitleRow() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Top Rated',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }

  Widget _buildTopRatedItemsStream() {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('Top').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
        return _buildTopRatedItemsList(snapshot.data?.docs);
      },
    );
  }

  Widget _buildTopRatedItemsList(List<DocumentSnapshot>? docs) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(width: 10),
            if (docs != null)
              for (var doc in docs)
                _buildTopRatedItem(doc),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }

  Widget _buildTopRatedItem(DocumentSnapshot doc) {
    return Container(
      width: 212,
      height: 254,
      color: const Color.fromRGBO(255, 251, 254, 1),
      child: Column(
        children: [
          const SizedBox(height: 11),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              border: Border.all(
                color: const Color.fromRGBO(8, 176, 158, 1),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                doc['imageURL'], // Assuming 'imageURL' is the field name for image URL in your Firestore document
                height: 123,
                width: 212,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 9),
          Text(
            doc['title'], // Assuming 'title' is the field name for the title in your Firestore document
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              height: 1.2,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 9),
          _buildPriceAndAuthorRow(doc),
        ],
      ),
    );
  }

  Widget _buildPriceAndAuthorRow(DocumentSnapshot doc) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(width: 35),
        Text(
          doc['price'], // Assuming 'price' is the field name for the price in your Firestore document
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(width: 34),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              doc['author'], // Assuming 'author' is the field name for the author in your Firestore document
              style: const TextStyle(
                color: Color.fromRGBO(111, 111, 111, 1),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.star_rate,
                  size: 14,
                  color: Color.fromRGBO(251, 181, 0, 1),
                ),
                // Add star rating here if available in your document
                const SizedBox(width: 3),
                Text(
                  doc['rating'], // Assuming 'rating' is the field name for the rating in your Firestore document
                  style: const TextStyle(
                    color: Color.fromRGBO(251, 181, 0, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSeeAllRow() {
    return const Padding(
      padding: EdgeInsets.only(left: 17, right: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Text(
              'See all',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(8, 176, 158, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// =================================================================================
// =================================================================================
// =================================================================================
// from top searches to categories


class top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _buildTopSearchTitle(),
        const SizedBox(height: 14),
        _buildTopSearchStream(),
        const SizedBox(height: 25),
        _buildSeparator(),
      ],
    );
  }

  Widget _buildTopSearchTitle() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Category',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }

  Widget _buildTopSearchStream() {
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection('Categories').snapshots(),
    builder: (BuildContext context,AsyncSnapshot        <QuerySnapshot<Map<String, dynamic>>> snapshot,
        ) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const CircularProgressIndicator();
      }
      if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
        return const Text('No data available');
      }
      final List<DocumentSnapshot<Map<String, dynamic>>> topSearches =
          snapshot.data!.docs;
      return _buildSearchList(topSearches);
    },
    );
  }

  Widget _buildSearchList(List<DocumentSnapshot<Map<String, dynamic>>> topSearches) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: topSearches.map((doc) {
          final topSearch = doc.get('name'); // Assuming the field name is 'topSearch'
          return _buildSearchItem(topSearch.toString());
        }).toList(),
      ),
    );
  }

  Widget _buildSearchItem(String topSearch) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 251, 254, 1),
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: const Color.fromRGBO(8, 176, 158, 1),
              width: 2,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              topSearch,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
          ),
        ),
        const SizedBox(width: 9),
      ],
    );
  }

  Widget _buildSeparator() {
    return Container(
      height: 1,
      width: double.infinity,
      color: const Color.fromRGBO(0, 0, 0, 0.7),
    );
  }
}






