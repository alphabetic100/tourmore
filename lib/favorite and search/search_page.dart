import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/image/background2.jpg",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromRGBO(241, 144, 144, 1),
                        spreadRadius: 7,
                        blurRadius: 10)
                  ]),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 20,
              bottom: 20,
            ),
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(241, 144, 144, 1),
                  blurRadius: 15,
                  spreadRadius: 5,
                )
              ],
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue,
            ),
            child: const Center(
              child: Text(
                "Search",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
