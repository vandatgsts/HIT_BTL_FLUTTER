import 'package:flutter/material.dart';

import 'dart:ui';



import '../../utils.dart';

class ForgotPassWordScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // forgotpasswordRUm (1:742)
        padding: EdgeInsets.fromLTRB(16*fem, 0*fem, 14*fem, 16*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Container(
              // newpaswordqHb (1:744)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 87*fem),
              child: Text(
                'New Pasword',
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
              // frame159JH (1:748)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 32*fem),
              width: 358*fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // enternewpasswordG81 (1:750)
                    margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 13*fem),
                    child: Text(
                      'Enter New Password',
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2175*ffem/fem,
                        color: const Color(0xff444444),
                      ),
                    ),
                  ),
                  Container(
                    // frame7Az5 (1:751)
                    padding: EdgeInsets.fromLTRB(36*fem, 15*fem, 36*fem, 17*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0xff444444)),
                      borderRadius: BorderRadius.circular(30*fem),
                    ),
                    child: Text(
                      'At least 8 digits',
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2175*ffem/fem,
                        color: const Color(0xff8f8f8f),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame16TyB (1:753)
              margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 40*fem),
              width: 358*fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // confirmpasswordbJh (1:755)
                    margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 13*fem),
                    child: Text(
                      'Confirm Password',
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2175*ffem/fem,
                        color: const Color(0xff444444),
                      ),
                    ),
                  ),
                  Container(
                    // frame7u4V (1:756)
                    padding: EdgeInsets.fromLTRB(36*fem, 15*fem, 36*fem, 17*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0xff444444)),
                      borderRadius: BorderRadius.circular(30*fem),
                    ),
                    child: Text(
                      '********',
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2175*ffem/fem,
                        color: const Color(0xff8f8f8f),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame4bT7 (1:745)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 371*fem),
              width: 358*fem,
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

          ],
        ),
      ),
    );
  }
}