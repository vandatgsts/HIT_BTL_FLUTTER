import 'package:flutter/material.dart';

class Mua1Duoc3 extends StatelessWidget {
  const Mua1Duoc3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Mua1Duoc3_CoVua(),
          Mua1Duoc3_CoLon()

        ],
      ),

    );
  }

  Container Mua1Duoc3_CoLon() {
    return Container(
    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 154, 152, 152).withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 4)
        ]),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(6), topRight: Radius.circular(6)),
          child: SizedBox.fromSize(
            child: Image.asset(
              'assets/Mua1Duoc3/TET_Mua_1_Duoc_3_Large.jpg',
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
              left: 12, right: 12, bottom: 8, top: 8),
          child: Column(children: [
            Row(
              children: [
                const Expanded(
                  flex: 6,
                  child: Text(
                    "MUA 1 ĐƯỢC 3 (CỠ LỚN)",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 249, 190, 12),
                      ),
                      child: const Text(
                        "NEW",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ))
              ],
            ),
            const Divider(
              color: Colors.grey,
            ),
            Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Row(
                      children: const [
                       
                      ],
                    )),
                Expanded(
                    flex: 1,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 43, 132, 45),
                            minimumSize: Size(45, 40)),
                        child: const Text(
                          "Chọn",
                          style: TextStyle(
                              fontSize: 15, color: Colors.white),
                        ))),
              ],
            ),
          ]),
        )
      ],
    ),
  );
  }

  Container Mua1Duoc3_CoVua() {
    return Container(
    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 154, 152, 152).withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 4)
        ]),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(6), topRight: Radius.circular(6)),
          child: SizedBox.fromSize(
            child: Image.asset(
              'assets/Mua1Duoc3/TET_Mua_1_Duoc_3_Regular.jpg',
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
              left: 12, right: 12, bottom: 8, top: 8),
          child: Column(children: [
            Row(
              children: [
                const Expanded(
                  flex: 6,
                  child: Text(
                    "MUA 1 ĐƯỢC 3 ( CỠ VỪA) ",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 249, 190, 12),
                      ),
                      child: const Text(
                        "NEW",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ))
              ],
            ),
            const Divider(
              color: Colors.grey,
            ),
            Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Row(
                      children: const [
                      
                      ],
                    )),
                Expanded(
                    flex: 1,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 43, 132, 45),
                            minimumSize: Size(45, 40)),
                        child: const Text(
                          "Chọn",
                          style: TextStyle(
                              fontSize: 15, color: Colors.white),
                        ))),
              ],
            ),
          ]),
        )
      ],
    ),
  );
  }
}