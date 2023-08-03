import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 1,
      // shrinkWrap: true,
      childAspectRatio: 0.76,
      children: [
        for (int i = 1; i <5; i++)
          Container(
            // padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.white.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 4)
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "singleitemPage");
                    },
                   
                    child: Container(
                     // margin: EdgeInsets.all(10),
                      child: Image.asset(
                        "assets/$i.jpg",
                        width: 275,
                        height: 134,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                  //  padding: EdgeInsets.only(bottom: 8),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Combo Nhân đôi vị hè",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                   padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                 // padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "289.000 VND",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        Icon(
                          CupertinoIcons.cart_badge_plus,
                          size: 32,
                          color: Colors.green,
                        )
                      ]),
                )
              ],
            ),
          )
      ],
    );
  }
}
