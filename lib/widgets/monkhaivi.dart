import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MonKhaiVi extends StatefulWidget {
  const MonKhaiVi({super.key});

  @override
  State<MonKhaiVi> createState() => _MonKhaiViState();
}

class _MonKhaiViState extends State<MonKhaiVi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 8,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,
            childAspectRatio: 0.75),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color:
                          Color.fromARGB(255, 154, 152, 152).withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 2)
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6)),
                  child: SizedBox.fromSize(
                    child: Image.asset(
                      'assets/MonKhaiVi/Xa_Lach_Ca_Ngu.jpg',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 10, right: 8, bottom: 8, top: 8),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Expanded(
                              flex: 6,
                              child: Text(
                                "Xà Lách Cá Ngừ",
                                style: TextStyle(
                                    fontSize:16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(),
                            )
                          ],
                        ),
                        const Text(
                          "Cơm chiên tôm vị cay trên nền xốt vơ tỏi độc đáo của Pizza Hut,Cơm chiên tôm vị cay trên nền xốt vơ tỏi độc đáo của Pizza Hut",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 10,),
                        Row(

                          children: [
                            Expanded(
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      minimumSize:
                                          MaterialStateProperty.all<Size>(
                                              Size(150, 50)),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.green),
                                      overlayColor:
                                          MaterialStateProperty.all<Color>(
                                              Color.fromARGB(255, 4, 203, 199)),
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Color.fromARGB(
                                                  255, 246, 205, 205)),
                                    ),
                                    child: const Text(
                                      "Thêm 129,000đ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300),
                                    ))),
                          ],
                        ),
                      ]),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}