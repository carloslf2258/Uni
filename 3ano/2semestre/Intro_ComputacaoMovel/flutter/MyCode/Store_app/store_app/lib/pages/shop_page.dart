import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_app/components/shoe_tile.dart';
import 'package:store_app/models/cart.dart';
import 'package:store_app/models/shoe.dart';
import 'package:store_app/pages/see_all_page.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add shoe to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItenToCart(shoe);

    //alert the user, shoe sucesfullt added
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text('Sucessfully added!'),
            content: Text('Check your cart'),
          ),
    );

  }

  // to search bar
  String _searchTerm = '';

@override
Widget build(BuildContext context) {
  return Consumer<Cart>(
    builder: (context, value, child) {
      // Lista de sapatos filtrada pelo nome
      List<Shoe> filteredShoes = value.getShoeList().where((shoe) {
        return shoe.name.toLowerCase().contains(_searchTerm);
      }).toList();

      return Column(
        children: [
          // search bar
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextField(
              onChanged: (value) {
                // Atualiza o termo de pesquisa
                setState(() {
                  _searchTerm = value.toLowerCase();
                });
              },
              decoration: const InputDecoration(
                hintText: 'Search',
                border: InputBorder.none,
                icon: Icon(Icons.search, color: Colors.grey),
              ),
            ),
          ),

          // message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Text(
              'Everyone flies.. Some fly longer than others',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          // hot picks
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'Hot Picks 🔥',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SeeAllPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'See all',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 50),

          // ListView Horizontal with filtered shoes
          Expanded(
            child: ListView.builder(
              itemCount: filteredShoes.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Shoe shoe = filteredShoes[index];
                return ShoeTile(
                  shoe: shoe,
                  onTap: () => addShoeToCart(shoe),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
            child: Divider(color: Colors.white),
          ),
        ],
      );
    },
  );
}

}
