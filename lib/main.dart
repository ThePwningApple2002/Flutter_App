import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FashionPage(),
  ));
}

class FashionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleSection(),
            SizedBox(height: 16),
            SearchField(),
            SizedBox(height: 16),
            FilterChips(),
            SizedBox(height: 16),
            Expanded(child: ProductGrid()),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.grey, // Placeholder za sliku
        ),
        SizedBox(width: 16),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}


class TitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Match Your Style',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

class FilterChips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FilterChip(
          label: Text('Trending Now'),
          backgroundColor: Colors.red,
          onSelected: (bool value) {},
        ),
        SizedBox(width: 8),
        FilterChip(
          label: Text('All'),
          onSelected: (bool value) {},
        ),
        SizedBox(width: 8),
        FilterChip(
          label: Text('New'),
          onSelected: (bool value) {},
        ),
      ],
    );
  }
}

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: List.generate(4, (index) {
        return FashionItem();
      }),
    );
  }
}

class FashionItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Icon(Icons.shopping_bag, color: Colors.white, size: 50),
              ),
            ),
          ),
          SizedBox(height: 8),
          Text('Product Name',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text('\$money, money'),
        ],
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: '',
        ),
      ],
    );
  }
}
