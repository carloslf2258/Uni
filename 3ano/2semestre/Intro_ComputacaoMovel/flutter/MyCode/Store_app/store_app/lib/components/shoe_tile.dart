import 'package:flutter/material.dart';
import 'package:store_app/models/shoe.dart';

class ShoeTile extends StatefulWidget {
  final Shoe shoe;
  final void Function()? onTap;

  const ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  State<ShoeTile> createState() => _ShoeTileState();
}

class _ShoeTileState extends State<ShoeTile> {
  bool added = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 300,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          // shoe pic - usando Flexible para ajustar dinamicamente
          Flexible(
            flex: 2, // Flex para controlar a proporção da imagem
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                widget.shoe.imagePath,
                fit: BoxFit.cover, // Ajusta a imagem ao espaço disponível
              ),
            ),
          ),

          // description - com o Text ajustado para não ultrapassar o espaço
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              widget.shoe.description,
              style: TextStyle(color: Colors.grey[600]),
              overflow: TextOverflow.ellipsis, // corta texto longo
              maxLines: 1, // só uma linha para evitar overflow
            ),
          ),

          // price + details - usando Expanded para ajustar a altura
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // shoe name
                      Text(
                        widget.shoe.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1, // Uma linha
                      ),
                      const SizedBox(height: 5),
                      // price
                      Text(
                        '\$${widget.shoe.price}',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 10), // pequeno espaço entre o texto e o botão

                // plus button
                GestureDetector(
                  onTap: () {
                    setState(() {
                      added = true;
                    });

                    widget.onTap?.call();

                    // Voltar ao ícone de "add" depois de 5 segundos
                    Future.delayed(const Duration(seconds: 5), () {
                      if (mounted) {
                        setState(() {
                          added = false;
                        });
                      }
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: Icon(
                      added ? Icons.check : Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
