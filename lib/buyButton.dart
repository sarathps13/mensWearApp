import 'package:flutter/material.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 360,
      margin: const EdgeInsets.only(left: 15, right: 15, top: 25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: const Color(0xff4CD137)),
        onPressed: () {},
        child: const Text(
          'BUY NOW   \$19.99',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
