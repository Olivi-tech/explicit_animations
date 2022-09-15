//import 'package:explicitanimation/animated_builder.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MaterialApp(
//     home: MyApp(),
//   ));
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
//   late Animation<double> animation;
//   late AnimationController controller;
//
//   @override
//   void initState() {
//     controller =
//         AnimationController(duration: const Duration(seconds: 2), vsync: this);
//     animation = Tween<double>(begin: 0.0, end: 200.0).animate(controller)
//       ..addListener(() {
//         setState(() {});
//       });
//     controller.repeat(
//       period: const Duration(seconds: 2),
//     );
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // final double width = MediaQuery.of(context).size.width;
//     // final double height = MediaQuery.of(context).size.height;
//
//     return Scaffold(
//       body: SafeArea(
//         child: Scaffold(
//           body: Center(
//             child: Container(
//               width: animation.value,
//               height: animation.value,
//               // width: width * 0.7,
//               // height: height * 0.5,
//               // color: Colors.green,
//               child: FlutterLogo(
//                 size: animation.value,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    var controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(period: const Duration(seconds: 2));
    animation = Tween<double>(begin: 0, end: 200).animate(controller)
      ..addListener((){
        setState(() {});
      }
      );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.deepPurple,
      body: Center(
        child: Container(
        //  color: Colors.white,
          width: animation.value,
          height: animation.value,
          child: FlutterLogo(
            size: animation.value,
          ),
        ),
      ),
    );
  }
}
