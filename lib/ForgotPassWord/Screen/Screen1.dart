import 'package:btl_flutter/ForgotPassWord/Screen/Screen2.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import '../../utils.dart';

class ForgotPassWordScreen1 extends StatelessWidget {
  ForgotPassWordScreen1({super.key});


  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // forgotpassword5u3 (1:678)
        width: double.infinity,
        height: 844 * fem,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // vuesaxlineararrowcircleleft5Gm (1:680)
              left: 16 * fem,
              top: 64 * fem,
              child: Align(
                child: SizedBox(
                  width: 16 * fem,
                  height: 16 * fem,
                  child: Image.asset(
                    'res/images/vuesax-linear-arrow-circle-left.png',
                    width: 16 * fem,
                    height: 16 * fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // forgotpaswordxLZ (1:686)
              left: 129 * fem,
              top: 62 * fem,
              child: Align(
                child: SizedBox(
                  width: 131 * fem,
                  height: 20 * fem,
                  child: Text(
                    'Forgot Pasword',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2175 * ffem / fem,
                      color: const Color(0xff444444),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // enteremailaddressdhb (1:688)
              left: 111 * fem,
              top: 154 * fem,
              child: Align(
                child: SizedBox(
                  width: 168 * fem,
                  height: 20 * fem,
                  child: Text(
                    'Enter Email Address',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2175 * ffem / fem,
                      color: const Color(0xff444444),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // backtosigninjEq (1:690)
              left: 142 * fem,
              top: 264 * fem,
              child: Align(
                child: SizedBox(
                  width: 105 * fem,
                  height: 18 * fem,
                  child: Text(
                    'Back to sign in',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2175 * ffem / fem,
                      color: const Color(0xffababab),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // doyouhaveanaccountDfo (1:692)
              left: 118 * fem,
              top: 530 * fem,
              child: Align(
                child: SizedBox(
                  width: 154 * fem,
                  height: 15 * fem,
                  child: Text(
                    'Do you have an account?',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 12 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2175 * ffem / fem,
                      color: const Color(0xffababab),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame27WH (1:693)
              left: 16 * fem,
              top: 200 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(29 * fem, 17 * fem, 29 * fem, 18 * fem),
                width: 358 * fem,
                height: 50 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff717171)),
                  borderRadius: BorderRadius.circular(30 * fem),
                ),
                child: Text(
                  'example@gmail.com',
                  style: SafeGoogleFont(
                    'Montserrat',
                    fontSize: 12 * ffem,
                    fontWeight: FontWeight.w300,
                    height: 1.2175 * ffem / fem,
                    color: const Color(0xff8f8f8f),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame7Zt5 (1:695)
              left: 16 * fem,
              top: 563 * fem,
              child: Container(
                width: 358 * fem,
                height: 50 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff444444)),
                  borderRadius: BorderRadius.circular(30 * fem),
                ),
                child: Center(
                  child: TextButton(
                    child: Text(
                      'Sign Up',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2175 * ffem / fem,
                        color: const Color(0xffe85c4d),
                      ),
                    ),
                    onPressed: (){

                    },
                  ),
                ),
              ),
            ),
            Positioned(
              // frame4Sws (1:697)
              left: 16 * fem,
              top: 313 * fem,
              child: Container(
                width: 358 * fem,
                height: 50 * fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30 * fem),
                  gradient: const LinearGradient(
                    begin: Alignment(-1, 0),
                    end: Alignment(1, 0),
                    colors: <Color>[Color(0xffff4b1f), Color(0xffff9068)],
                    stops: <double>[0, 1],
                  ),
                ),
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgotPassWordScreen2()));
                    },
                    child: Text(
                      'Send',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2175 * ffem / fem,
                        color: const Color(0xffe85c4d),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame64TT (1:699)
              left: 149 * fem,
              top: 425 * fem,
              child: Container(
                width: 88.62 * fem,
                height: 47 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        // orMxM (1:700)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 9 * fem),
                        child: Text(
                          'or',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xffe85c4d),
                          ),
                        )),
                    Container(
                      // frame5UXB (1:701)
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // akariconsfacebookfillpL9 (1:702)
                            width: 18 * fem,
                            height: 18 * fem,
                            child: Image.asset(
                              'res/images/akar-icons-facebook-fill-tTb.png',
                              width: 18 * fem,
                              height: 18 * fem,
                            ),
                          ),
                          SizedBox(
                            width: 19 * fem,
                          ),
                          Container(
                            // akariconsgooglecontainedfillw9 (1:704)
                            width: 18 * fem,
                            height: 18 * fem,
                            child: Image.asset(
                              'res/images/akar-icons-google-contained-fill-BHT.png',
                              width: 18 * fem,
                              height: 18 * fem,
                            ),
                          ),
                          SizedBox(
                            width: 19 * fem,
                          ),
                          Container(
                            // frame3To (1:706)
                            width: 14.62 * fem,
                            height: 18 * fem,
                            child: Image.asset(
                              'res/images/frame-M6h.png',
                              width: 14.62 * fem,
                              height: 18 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }


}
