import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_app/models/cart.dart';
import 'package:store_app/models/shoe.dart';

class CartItem extends StatefulWidget {
  final Shoe shoe;
  final Function(bool)? onSelectedChanged;

  const CartItem({super.key, required this.shoe, this.onSelectedChanged});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  bool isSelected = false;

  // Remove item do carrinho
  void removeItemFromCart() {
  // Se estiver selecionado, avisa a CartPage para o remover da seleção
  if (isSelected) {
    widget.onSelectedChanged?.call(false);
  }

  Provider.of<Cart>(context, listen: false).removeItenFromCart(widget.shoe);
}


  // Alterna a seleção do item
  void toggleSelection() {
    setState(() {
      isSelected = !isSelected;
    });
    // Notificar a CartPage
    widget.onSelectedChanged?.call(isSelected);
  }
  

  @override
  Widget build(BuildContext context) {
    return Container(
      // Decoração do item
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.only(bottom: 10),

      // Lista de itens no carrinho
      child: ListTile(
        leading: GestureDetector(
          onTap: toggleSelection,  // Alterna o estado de seleção ao tocar no quadrado
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: isSelected ? Colors.green : Colors.grey[300],  // Muda a cor quando selecionado
              borderRadius: BorderRadius.circular(5),
            ),
            child: isSelected
                ? const Icon(
                    Icons.check,
                    color: Colors.white,  // Cor do check verde
                    size: 20, 
                  )
                : null,
          ),
        ),
        // A imagem do produto
        title: Row(
          children: [
            Image.asset(widget.shoe.imagePath, width: 50, height: 50),
            const SizedBox(width: 10),  // Espaço entre imagem e informações
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.shoe.name),
                Text(widget.shoe.price.toString()),
              ],
            ),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}

