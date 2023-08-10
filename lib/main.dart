import 'package:btl_flutter/AppRouter/AppRouter.dart';
import 'package:btl_flutter/binding/AppBinding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'AppRouter/AppPage.dart';



void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (context, widget) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialBinding: AppBinding(),
        initialRoute: AppRouter.login,
        defaultTransition: Transition.fade,
        getPages: AppPage.pages,
        // supportedLocales: AppConstant.availableLocales,
        theme: ThemeData(
          primaryColor: Colors.white,
          fontFamily: 'SF-Pro-Display',
          textSelectionTheme: const TextSelectionThemeData(selectionHandleColor: Colors.transparent),
          colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
        ),
      ),
    ),
  );
}

// import 'package:btl_flutter/CallAPI/Network/network.dart';
// import 'package:flutter/material.dart';

// /// Flutter code sample for [DefaultTextStyle].

// void main() {
//    WidgetsFlutterBinding.ensureInitialized();
//    runApp(const DefaultTextStyleApp());
// }


// class DefaultTextStyleApp extends StatelessWidget {
//   const DefaultTextStyleApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         useMaterial3: true,
//         brightness: Brightness.light,
//         colorSchemeSeed: Colors.purple,
//       ),
//       home: const DefaultTextStyleExample(),
//     );
//   }
// }

// class DefaultTextStyleExample extends StatelessWidget {
//   const DefaultTextStyleExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('DefaultTextStyle.merge Sample')),
//       // Inherit MaterialApp text theme and override font size and font weight.
//       body: FutureBuilder(
//         future: ApiModule.getDetailCategory(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//               return Text("${snapshot}");
//           } else {
//             return CircularProgressIndicator();
//           }
//         },
//       ),
//     );
//   }
// }
