import 'package:flutter/material.dart';
import 'package:tour_more/all%20data/alldatalist.dart';
import 'package:tour_more/profile/profilepage.dart';

class MyDrawerHead extends StatefulWidget {
  const MyDrawerHead({super.key});

  @override
  State<MyDrawerHead> createState() => _MyDrawerHeadState();
}

class _MyDrawerHeadState extends State<MyDrawerHead> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.infinity,
      color: Colors.blue,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const Scaffold(
                          body: Profile(
                            getBaekbutton: true,
                          ),
                        );
                      },
                    ),
                  );
                });
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 0),
                      blurRadius: 10,
                      blurStyle: BlurStyle.outer,
                    )
                  ],
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/image/profile.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              currentName,
              style: const TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              currentEmail,
              style: const TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
