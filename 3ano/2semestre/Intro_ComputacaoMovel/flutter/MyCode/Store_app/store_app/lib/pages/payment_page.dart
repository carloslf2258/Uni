import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_app/models/cart.dart';
import 'package:store_app/models/shoe.dart';
import 'package:store_app/pages/home_page.dart';

class PaymentPage extends StatefulWidget {
  final List<Shoe> selectedItems;

  const PaymentPage({super.key, required this.selectedItems});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final Map<String, String> methodLabels = {
    'credit': 'Credit Card',
    'paypal': 'PayPal',
    'mbway': 'MB Way',
  };

  String? selectedPaymentMethod; // guarda o método de pagamento selecionado
  final TextEditingController inputController = TextEditingController();
  bool isInputValid = false; // controla se o campo está preenchido

  @override
  void initState() {
    super.initState();

    // sempre que o utilizador escreve, atualiza o estado do botão
    inputController.addListener(() {
      setState(() {
        isInputValid = inputController.text.trim().isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    inputController.dispose(); // libera o controlador quando a página fecha
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false); // acesso ao carrinho

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Payment'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Choose your payment method:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Botão Credit Card
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  selectedPaymentMethod = 'credit';
                  inputController.text = '';
                });
              },
              icon: const Icon(Icons.credit_card),
              label: const Text('Credit Card'),
              style: ElevatedButton.styleFrom(
                backgroundColor: selectedPaymentMethod == 'credit'
                    ? Colors.green
                    : Colors.white,
                foregroundColor: Colors.black,
                minimumSize: const Size.fromHeight(50),
              ),
            ),
            if (selectedPaymentMethod == 'credit') ...[
              const SizedBox(height: 10),
              TextField(
                controller: inputController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Card Number',
                  border: OutlineInputBorder(),
                ),
              ),
            ],

            const SizedBox(height: 10),

            // Botão PayPal
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  selectedPaymentMethod = 'paypal';
                  inputController.text = '';
                });
              },
              icon: const Icon(Icons.account_balance_wallet),
              label: const Text('PayPal'),
              style: ElevatedButton.styleFrom(
                backgroundColor: selectedPaymentMethod == 'paypal'
                    ? Colors.green
                    : Colors.white,
                foregroundColor: Colors.black,
                minimumSize: const Size.fromHeight(50),
              ),
            ),
            if (selectedPaymentMethod == 'paypal') ...[
              const SizedBox(height: 10),
              TextField(
                controller: inputController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'PayPal Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ],

            const SizedBox(height: 10),

            // Botão MB Way
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  selectedPaymentMethod = 'mbway';
                  inputController.text = '';
                });
              },
              icon: const Icon(Icons.phone_android),
              label: const Text('MB Way'),
              style: ElevatedButton.styleFrom(
                backgroundColor: selectedPaymentMethod == 'mbway'
                    ? Colors.green
                    : Colors.white,
                foregroundColor: Colors.black,
                minimumSize: const Size.fromHeight(50),
              ),
            ),
            if (selectedPaymentMethod == 'mbway') ...[
              const SizedBox(height: 10),
              TextField(
                controller: inputController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: 'Phone Number (MB Way)',
                  border: OutlineInputBorder(),
                ),
              ),
            ],

            const Spacer(),

            // Confirm Button
            Center(
              child: ElevatedButton(
                onPressed: (selectedPaymentMethod == null || !isInputValid)
                    ? null
                    : () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Payment with ${methodLabels[selectedPaymentMethod]!} confirmed!',
                            ),
                          ),
                        );

                        for (var item in widget.selectedItems) {
                          cart.removeItenFromCart(item);
                        }

                        Future.delayed(const Duration(seconds: 1), () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
                        });
                      },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      (selectedPaymentMethod == null || !isInputValid)
                          ? Colors.grey
                          : Colors.black,
                  minimumSize: const Size.fromHeight(50),
                ),
                child: const Text(
                  'Confirm Payment',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
