import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_app/components/cart_item.dart';
import 'package:store_app/models/cart.dart';
import 'package:store_app/models/shoe.dart';
import 'package:store_app/pages/payment_page.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final Set<Shoe> selectedItems = {};

  void updateSelection(Shoe shoe, bool isSelected) {
    setState(() {
      if (isSelected) {
        selectedItems.add(shoe);
      } else {
        selectedItems.remove(shoe);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) {
        //Para ver se está algum Item selecionado
        bool hasItemsSelected = selectedItems.isNotEmpty;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Heading
              const Text(
                'My Cart',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),

              const SizedBox(height: 25),

              // Shoe item
              Expanded(
                child: ListView.builder(
                  itemCount: cart.getUserCart().length,
                  itemBuilder: (context, index) {
                    Shoe individualShoe = cart.getUserCart()[index];
                    return Slidable(
                      key: ValueKey(individualShoe.name),
                      endActionPane: ActionPane(
                        motion: const BehindMotion(),
                        dismissible: DismissiblePane(
                          onDismissed: () {
                            cart.removeItenFromCart(individualShoe);
                            setState(() {
                              selectedItems.remove(individualShoe);
                            });
                          },
                        ),
                        children: const [],
                      ),
                      child: CartItem(
                        shoe: individualShoe,
                        onSelectedChanged: (isSelected) {
                          updateSelection(individualShoe, isSelected);
                        },
                      ),
                    );
                  },
                ),
              ),

              // Payment button
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed:
                        hasItemsSelected
                            ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => PaymentPage(
                                        selectedItems: selectedItems.toList(),
                                      ),
                                ),
                              );
                            }
                            : null, // Desativa o botão se não houver itens selecionados
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          hasItemsSelected ? Colors.red : Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Payment',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
