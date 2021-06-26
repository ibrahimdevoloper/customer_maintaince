import 'package:customer_maintaince/Pages/IntroPage.dart';
import 'package:customer_maintaince/Translation/Messages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Messages(),
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en'),
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.tajawalTextTheme(Theme.of(context).textTheme)
          // .copyWith(
          //   button: Theme.of(context).textTheme
          //       .apply(
          //         fontWeightDelta: 2,
          //       ),
          //   bodyText1: Theme.of(context).textTheme.bodyText1.apply(
          //         fontWeightDelta: 2,
          //       ),
          //   bodyText2: Theme.of(context).textTheme.bodyText2.apply(
          //         fontWeightDelta: 2,
          //       ),
          //   caption: Theme.of(context).textTheme.caption.apply(
          //         fontWeightDelta: 2,
          //       ),
          //   headline1: Theme.of(context).textTheme.headline1.apply(
          //         fontWeightDelta: 2,
          //       ),
          //   headline2: Theme.of(context).textTheme.headline2.apply(
          //         fontWeightDelta: 2,
          //       ),
          //   headline4: Theme.of(context).textTheme.headline4.apply(
          //         fontWeightDelta: 2,
          //       ),
          //   headline3: Theme.of(context).textTheme.headline3.apply(
          //         fontWeightDelta: 2,
          //       ),
          //   headline5: Theme.of(context).textTheme.headline5.apply(
          //         fontWeightDelta: 2,
          //       ),
          //   headline6: Theme.of(context).textTheme.headline6.apply(
          //         fontWeightDelta: 2,
          //       ),
          //   overline: Theme.of(context).textTheme.overline.apply(
          //         fontWeightDelta: 2,
          //       ),
          //   subtitle1: Theme.of(context).textTheme.subtitle1.apply(
          //         fontWeightDelta: 2,
          //       ),
          //   subtitle2: Theme.of(context).textTheme.subtitle2.apply(
          //         fontWeightDelta: 2,
          //       ),
          // ),
          ),
      home: IntroPage(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
