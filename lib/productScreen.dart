import 'package:flutter/material.dart';
import './dropDown.dart';
import 'textData.dart';
import './buyButton.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Product Screen',
        ),
        titleTextStyle: const TextStyle(
          fontFamily: 'poppins',
          fontSize: 24,
        ),
        backgroundColor: const Color(0xff4CD137),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/imgbig.png'), fit: BoxFit.fill),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(color: Colors.grey, blurRadius: 2),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(
                      right: 1, left: 1, top: 25, bottom: 5),
                  decoration: const BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(color: Colors.grey, blurRadius: 4),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          children: const [
                            Text(
                              'Merino Short Sleeve \n Base Layer Tee',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'poppins',
                                  fontSize: 15),
                            ),
                            DropDown(),
                          ],
                        ),
                      ),
                      const TextData(),
                      const BuyButton(),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
