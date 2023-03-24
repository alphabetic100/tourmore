import 'package:flutter/material.dart';

import 'drawer_bottom.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            SizedBox(
              width: double.maxFinite,
              height: 60,
              child: Card(
                color: Colors.lightBlue,
                child: Center(
                  child: Text(
                    'purchase Tickit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: 60,
              child: Card(
                color: Colors.lightBlue,
                child: Center(
                  child: Text(
                    'See Hotels',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: 60,
              child: Card(
                color: Colors.lightBlue,
                child: Center(
                  child: Text(
                    'Restaurant',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: 60,
              child: Card(
                color: Colors.lightBlue,
                child: Center(
                  child: Text(
                    'Book a Car',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Divider(
                height: 1,
                indent: 3,
                endIndent: 4,
                thickness: 1,
                color: Colors.black54,
              ),
            ),
            DrawerBottom(),
          ],
        ),
      ),
    );
  }
}
