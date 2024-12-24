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
            SizedBox(height: 10),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Optional padding
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Spreads chips across the row
        children: [
          FilterChip(
            label: Text('Trending Now'),
            onSelected: (bool value) {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16), // More rounded edges
            ),
          ),
          FilterChip(
            label: Text('All'),
            onSelected: (bool value) {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16), // More rounded edges
            ),
          ),
          FilterChip(
            label: Text('New'),
            onSelected: (bool value) {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16), // More rounded edges
            ),
          ),
        ],
      ),
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
      children: List.generate(10, (index) {
        return FashionItem();
      }),
    );
  }
}

class FashionItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: AspectRatio(
                aspectRatio: 3 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Icon(Icons.shopping_bag,
                        color: Colors.blueGrey, size: 50),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Product Name',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text('\$XX.XX'),
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
