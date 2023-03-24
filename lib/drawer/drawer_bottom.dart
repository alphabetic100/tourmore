import 'package:flutter/material.dart';

class DrawerBottom extends StatefulWidget {
  const DrawerBottom({super.key});
  @override
  State<DrawerBottom> createState() => _DrawerBottomState();
}

class _DrawerBottomState extends State<DrawerBottom> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Container(
              height: 55,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                child: Text(
                  "Get vouchers",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              height: 55,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                child: Text(
                  "See offers",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              height: 55,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                child: Text(
                  "Get discount",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              height: 55,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                child: Text(
                  "About info",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
