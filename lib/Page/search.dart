import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
            const SizedBox(height: 40),
        // Search bar
        TextFormField(
          onChanged: (String value) {
            print(value);
          },
          decoration: InputDecoration(
            hintText: 'Search',
            suffixIcon: const Icon(Icons.search),
            suffixIconColor: const Color.fromRGBO(8, 176, 158, 1),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: const BorderSide(color: Color.fromRGBO(8, 176, 158, 1), width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: const BorderSide(color: Color.fromRGBO(8, 176, 158, 1), width: 2),
            ),
          ),
        ),
        const SizedBox(height: 8),
        // Section: Top searches
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Top searches',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 10),
          ],
        ),
        const SizedBox(height: 14),
        // List of top searches (fetching data from Firestore)
        StreamBuilder(
        stream: FirebaseFirestore.instance.collection('Top').snapshots(),
    builder: (BuildContext context, AsyncSnapshot              <QuerySnapshot<Map<String, dynamic>>> snapshot,
        ) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const CircularProgressIndicator();
      }
      if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
        return const Text('No data available');
      }
      final List<DocumentSnapshot<Map<String, dynamic>>> topSearches = snapshot.data!.docs;
      return Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          children: topSearches.map((doc) {
            final topSearch = doc.get('name'); // Assuming the field name is 'topSearch'
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
                      topSearch.toString(), // Ensure to convert to String
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
          }).toList(),
        ),
      );
    },
        ),
        const SizedBox(height: 25),
        Container(
          height: 1,
          width: double.infinity,
          color: const Color.fromRGBO(0, 0, 0, 0.7),
        ),
        // Section: Browse category
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Browse category',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 10),
          ],
        ),
        const SizedBox(height: 10),
        // List of categories (fetching data from Firestore)
        StreamBuilder(
        stream: FirebaseFirestore.instance.collection('Categories').snapshots(),
    builder: (BuildContext context, AsyncSnapshot              <QuerySnapshot<Map<String, dynamic>>> snapshot,
        ) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const CircularProgressIndicator();
      }
      if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
        return const Text('No data available');
      }
      final List<DocumentSnapshot<Map<String, dynamic>>> categories = snapshot.data!.docs;
      return Column(
        children: categories.map((doc) {
          final categoryName = doc.get('name'); // Assuming the field name is 'categoryName'
          return Column(
            children: [
              Row(
                children: [
                  const SizedBox(width: 5),
                  const Icon(Icons.keyboard_arrow_right, size: 32, color: Color.fromRGBO(0, 0, 0, 0.7)),
                  const SizedBox(width: 4),
                  Text(
                    categoryName.toString(), // Ensure to convert to String
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Color.fromRGBO(0, 0, 0, 0.7),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          );
        }).toList(),
      );
    },
        ),
            ],
        ),
    );
  }
}


