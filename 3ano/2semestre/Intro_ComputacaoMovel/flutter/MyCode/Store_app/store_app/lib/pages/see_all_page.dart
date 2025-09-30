import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_app/components/shoe_tile.dart';
import 'package:store_app/models/cart.dart';
import 'package:store_app/models/shoe.dart';

class SeeAllPage extends StatefulWidget {
  const SeeAllPage({super.key});

  @override
  State<SeeAllPage> createState() => _SeeAllPageState();
}

class _SeeAllPageState extends State<SeeAllPage> {
  String _searchTerm = '';

  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItenToCart(shoe);

    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Successfully added!'),
        content: Text('Check your cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Shoes'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Volta à página anterior
          },
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Consumer<Cart>(
        builder: (context, value, child) {
          List<Shoe> filteredShoes = value.getShoeList().where((shoe) {
            return shoe.name.toLowerCase().contains(_searchTerm);
          }).toList();

          return Column(
            children: [
              // Barra de pesquisa
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                margin: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  onChanged: (value) {
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

              // Mensagem
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Everyone flies... Some fly longer than others.',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),

              // Lista vertical
              Expanded(
                child: GridView.builder(
                  itemCount: filteredShoes.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Duas colunas
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: 0.7, // Ajusta consoante o layout do ShoeTile
                  ),
                  itemBuilder: (context, index) {
                    Shoe shoe = filteredShoes[index];
                    return ShoeTile(
                      shoe: shoe,
                      onTap: () => addShoeToCart(shoe),
                    );
                  },
                ),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Divider(color: Colors.grey),
              ),
            ],
          );
        },
      ),
    );
  }
}
