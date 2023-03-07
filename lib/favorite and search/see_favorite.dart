import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../all data/alldatalist.dart';
import '../mainPage/places_all.dart';

class SeeFavorite extends StatelessWidget {
  const SeeFavorite({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(children: [
        Positioned(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 800,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              itemCount: imagesAsset.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(CupertinoPageRoute(builder: (context) {
                      return PlacesAll(
                        image: imagesAsset[index],
                        title: titleofImage[index],
                        location: locationofImage[index],
                        ticketPrice: 500.00,
                        description:
                            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
                        openTime: '8 AM - 9 PM',
                      );
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                          image: AssetImage(imagesAsset[index]),
                          fit: BoxFit.cover),
                    ),
                    margin: const EdgeInsets.only(
                      bottom: 20,
                      top: 20,
                      left: 20,
                      right: 20,
                    ),
                    height: 100,
                    width: 270,
                    child: Stack(
                      children: [
                        const Positioned(
                          top: 270,
                          right: 20,
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 40,
                            shadows: [
                              Shadow(
                                color: Colors.white38,
                                blurRadius: 34,
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          height: double.maxFinite,
                          width: double.maxFinite,
                          top: 250,
                          left: 20,
                          child: Text(
                            titleofImage[index],
                            style: const TextStyle(
                              shadows: [
                                Shadow(
                                  color: Colors.black,
                                  offset: Offset(1, -1),
                                ),
                              ],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Positioned(
                          height: double.maxFinite,
                          width: double.maxFinite,
                          top: 280,
                          left: 20,
                          child: Text(
                            "subtitle of place",
                            style: TextStyle(
                              shadows: [
                                Shadow(
                                  color: Colors.black,
                                  offset: Offset(1, -1),
                                ),
                              ],
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ]),
    );
  }
}
