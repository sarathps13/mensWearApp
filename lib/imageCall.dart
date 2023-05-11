import 'package:flutter/material.dart';
import 'package:mens_wear/productScreen.dart';

class ImageCall extends StatelessWidget {
  const ImageCall({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 1,
        ),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const ProductScreen();
                },
              ),
            );
          },
          child: Container(
            alignment: AlignmentDirectional.bottomStart,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(color: Colors.grey, blurRadius: 4),
              ],
              shape: BoxShape.rectangle,
              color: const Color(0xffF1F1F1),
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage(
                  'assets/menimg.png',
                ),
                alignment: Alignment.topCenter,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                  style: const ButtonStyle(alignment: Alignment.bottomLeft),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return const ProductScreen();
                    }));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Merino Short Sleeve \n Base Layer Tee',
                      style: TextStyle(
                          fontSize: 6,
                          fontFamily: 'poppins',
                          color: Colors.black),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    '\$19.99',
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'poppins',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
