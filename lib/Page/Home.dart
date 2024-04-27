import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        leading: Container(
          padding: const EdgeInsets.only(left: 9),
          child: const IconButton(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Color.fromRGBO(8, 176, 158, 1),
              size: 42,
            ),
            onPressed: null,
          ),
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Welcome, Username',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.account_circle_outlined,
                size: 42,
                color: Color.fromRGBO(0, 0, 0, 0.6),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 17),
                child: Text(
                  'Top Rated',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          TopRatedWidget(), // Display Top Rated section
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 17, right: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(
                    '',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(8, 176, 158, 1),
                    ),
                  ),
                ),
                Text(
                  'Category',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          CategoryWidget(), // Display Category section
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(width: 10),
              Padding(
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
              ),
            ],
          ),
          PopularForWebWidget(), // Display Popular for Web section
          const SizedBox(height: 10),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}

// =================================================================================
// =================================================================================
// =================================================================================
// TopRated widget

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
          '',
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
      stream: FirebaseFirestore.instance.collection('top_rated').snapshots(),
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
// Popular for web widget

class PopularForWebWidget extends StatelessWidget {
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
          '',
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
      stream: FirebaseFirestore.instance.collection('web').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
        return _buildWebDevItemsList(snapshot.data?.docs);
      },
    );
  }

  Widget _buildWebDevItemsList(List<DocumentSnapshot>? docs) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(width: 10),
            if (docs != null)
              for (var doc in docs)
                _buildWebDevItem(doc),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }

  Widget _buildWebDevItem(DocumentSnapshot doc) {
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
                doc['imageUrl'], // Assuming 'imageURL' is the field name for image URL in your Firestore document
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
// Category widget

class CategoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(height: 14),
        _buildCategoryStream(),
        const SizedBox(height: 25),
        _buildSeparator(),
      ],
    );
  }



  Widget _buildCategoryStream() {
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
      child: Row(
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

