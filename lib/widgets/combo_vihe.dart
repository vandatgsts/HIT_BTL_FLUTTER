import 'package:flutter/material.dart';

import '../CallAPI/Contructor/post.dart';
import '../CallAPI/Network/vihe_network.dart';
import '../detail/vihe_detail_screen.dart';

class ViHe extends StatefulWidget {
  const ViHe({super.key});

  @override
  State<ViHe> createState() => _ViHeState();
}

class _ViHeState extends State<ViHe> {
  var postData = <Post>[];
  @override
  void initState() {
    super.initState();
    NetworkRequestViHe.fetchPost().then((dataFromServer) {
      setState(() {
        postData = dataFromServer;
      });
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
                itemCount: postData.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 159, 159, 159)
                                  .withOpacity(0.8),
                              spreadRadius: 1,
                              blurRadius: 4)
                        ]),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(6),
                              topRight: Radius.circular(6)),
                          child: SizedBox.fromSize(
                              child: Image.network('${postData[index].image}')),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, bottom: 8, top: 8),
                          child: Column(children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Text(
                                    "${postData[index].name}",
                                    style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ViHeDetailScreen()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(255, 249, 190, 12),
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
                            // Text(
                            //   "${postData[index].description}",
                            //   style:
                            //       TextStyle(color: Colors.black, fontSize: 12),
                            // ),
                            const Divider(
                              color: Colors.black,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Row(
                                      children: [
                                        const Text(
                                          "Từ: ",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "${postData[index].price} VND",
                                          style: const TextStyle(
                                              fontSize: 18,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ViHeDetailScreen()));
                                        },
                                        style: ElevatedButton.styleFrom(
                                            primary: const Color.fromARGB(
                                                255, 41, 128, 42),
                                            minimumSize: Size(45, 40)),
                                        child: const Text(
                                          "Chọn",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ))),
                              ],
                            ),
                          ]),
                        )
                      ],
                    ),
                  );
                }))
      ],
    );
  }
}
