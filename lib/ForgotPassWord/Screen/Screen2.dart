import 'package:flutter/material.dart';
import 'dart:ui';
import '../../utils.dart';
import 'Screen3.dart';

class ForgotPassWordScreen2 extends StatelessWidget {
  const ForgotPassWordScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // forgotpasswordvch (1:709)
        padding: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 16*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // statusbar1u3 (1:710)
              margin: EdgeInsets.fromLTRB(7*fem, 0*fem, 0*fem, 29*fem),
              width: 347*fem,
              height: 33*fem,
              child: Image.asset(
                'res/images/status-bar-wfo.png',
                width: 347*fem,
                height: 33*fem,
              ),
            ),
            Container(
              // autogroup9uphvFK (VYFYLr71iDuGwin1Gy9upH)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 132*fem, 72*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // vuesaxlineararrowcircleleftr8y (1:711)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 115*fem, 0*fem),
                    width: 16*fem,
                    height: 16*fem,
                    child: Image.asset(
                      'res/images/vuesax-linear-arrow-circle-left-TXw.png',
                      width: 16*fem,
                      height: 16*fem,
                    ),
                  ),
                  Text(
                    // verificationxho (1:712)
                    'Verification',
                    style: SafeGoogleFont (
                      'Montserrat',
                      fontSize: 16*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2175*ffem/fem,
                      color: const Color(0xff444444),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // enterverificationcodeh9b (1:714)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 26*fem),
              child: Text(
                'Enter Verification Code',
                style: SafeGoogleFont (
                  'Montserrat',
                  fontSize: 16*ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2175*ffem/fem,
                  color: const Color(0xff444444),
                ),
              ),
            ),
            Container(
              // frame14D7w (1:733)
              margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 18*fem, 14*fem),
              width: double.infinity,
              height: 50*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame10jc5 (1:734)
                    width: 50*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0xff444444)),
                      borderRadius: BorderRadius.circular(50*fem),
                    ),
                    child: Center(
                      child: Text(
                        '3',
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 24*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2175*ffem/fem,
                          color: const Color(0xff444444),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40*fem,
                  ),
                  Container(
                    // frame13oM3 (1:736)
                    width: 50*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0xff444444)),
                      borderRadius: BorderRadius.circular(50*fem),
                    ),
                    child: Center(
                      child: Text(
                        '7',
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 24*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2175*ffem/fem,
                          color: const Color(0xff444444),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40*fem,
                  ),
                  Container(
                    // frame125pM (1:738)
                    width: 50*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0xff444444)),
                      borderRadius: BorderRadius.circular(50*fem),
                    ),
                    child: Center(
                      child: Text(
                        '1',
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 24*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2175*ffem/fem,
                          color: const Color(0xff444444),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40*fem,
                  ),
                  Container(
                    // frame11ZjX (1:740)
                    width: 50*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0xff444444)),
                      borderRadius: BorderRadius.circular(50*fem),
                    ),
                    child: Center(
                      child: Text(
                        '9',
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 24*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2175*ffem/fem,
                          color: const Color(0xff444444),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // ifyoudidntreceiveacoderesendri (1:716)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 31*fem),
              child: RichText(
                text: TextSpan(
                  style: SafeGoogleFont (
                    'Montserrat',
                    fontSize: 14*ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.2189999989*ffem/fem,
                    color: const Color(0xffababab),
                  ),
                  children: [
                    TextSpan(
                      text: 'If you didn’t receive a code, ',
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2175*ffem/fem,
                        color: const Color(0xffababab),
                      ),
                    ),
                    TextSpan(
                      text: 'Resend',
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2175*ffem/fem,
                        color: const Color(0xffe85c4d),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // frame4D5K (1:721)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 62*fem),
              width: double.infinity,
              height: 50*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(30*fem),
                gradient: const LinearGradient (
                  begin: Alignment(-1, 0),
                  end: Alignment(1, 0),
                  colors: <Color>[Color(0xffff4b1f), Color(0xffff9068)],
                  stops: <double>[0, 1],
                ),
              ),
              child: Center(
                child: TextButton(
                  onPressed: ()=>Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgotPassWordScreen3())),
                  child: Text(
                    'Send',
                    style: SafeGoogleFont (
                      'Montserrat',
                      fontSize: 16*ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2175*ffem/fem,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // frame6Fnh (1:723)
              margin: EdgeInsets.fromLTRB(133*fem, 0*fem, 136.38*fem, 58*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // orPtu (1:724)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                    child: Text(
                      'or',
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2175*ffem/fem,
                        color: const Color(0xffe85c4d),
                      ),
                    ),
                  ),
                  SizedBox(
                    // frame5jC5 (1:725)
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          // akariconsfacebookfillsZB (1:726)
                          width: 18*fem,
                          height: 18*fem,
                          child: Image.asset(
                            'res/images/akar-icons-facebook-fill-UB3.png',
                            width: 18*fem,
                            height: 18*fem,
                          ),
                        ),
                        SizedBox(
                          width: 19*fem,
                        ),
                        SizedBox(
                          // akariconsgooglecontainedfillC5 (1:728)
                          width: 18*fem,
                          height: 18*fem,
                          child: Image.asset(
                            'res/images/akar-icons-google-contained-fill-Xh3.png',
                            width: 18*fem,
                            height: 18*fem,
                          ),
                        ),
                        SizedBox(
                          width: 19*fem,
                        ),
                        SizedBox(
                          // frameJPb (1:730)
                          width: 14.62*fem,
                          height: 18*fem,
                          child: Image.asset(
                            'res/images/frame-eSm.png',
                            width: 14.62*fem,
                            height: 18*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // doyouhaveanaccountEHF (1:718)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
              child: Text(
                'Do you have an account?',
                style: SafeGoogleFont (
                  'Montserrat',
                  fontSize: 12*ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.2175*ffem/fem,
                  color: const Color(0xffababab),
                ),
              ),
            ),
            Container(
              // frame7M6y (1:719)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 211*fem),
              width: double.infinity,
              height: 50*fem,
              decoration: BoxDecoration (
                border: Border.all(color: const Color(0xff444444)),
                borderRadius: BorderRadius.circular(30*fem),
              ),
              child: Center(
                child: Text(
                  'Sign up',
                  style: SafeGoogleFont (
                    'Montserrat',
                    fontSize: 16*ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.2175*ffem/fem,
                    color: const Color(0xff8f8f8f),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}