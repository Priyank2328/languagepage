import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import './translations/codegen_loader.g.dart';
import './app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: [
        Locale('en'),
        Locale('fr'),
        Locale('gu'),
        Locale('ru'),
      ],
      fallbackLocale: Locale('en'),
      assetLoader: CodegenLoader(),
      child: MyApp(),
    ),
  );
}
//  Loop of concepts of c language
//<!DOCTYPE html>
// <html lang="en">
// <head>
//     <meta charset="UTF-8">
//     <meta http-equiv="X-UA-Compatible" content="IE=edge">
//     <meta name="viewport" content="width=device-width, initial-scale=1.0">
//     <title>NestedLoop</title>
//     <style>
//         .h1
//         {
//             text-align: left;
//             color: blue;
//         }
//     </style>
//     <script>
//         function reverseloop()
//         {
//             var op = "";
//             for (var i=5;i>=1;i--)
//             {
//                 for (var j=i;j>=1;j--)
//                 {
//                     op = op + j;
//                 }
//                 op=op+"</br>";
//             }
//             document.getElementById("output").innerHTML = op;
//         }
//         function loop()
//         {
//             var op = "";
//             for (var i=1;i<=5;i++)
//             {
//                 for (var j=5;j>=i;j--)
//                 {
//                     op = op + "&nbsp;";
//                 }
//                 op=op+"</br>";
//                 for (var k=1;k<=i;k++)
//                 {
//                     op = op +  " * ";
//                 }
//                 op=op+"</br>";
//                 document.getElementById("txtoutput").innerHTML = op;
//             }
//         }
//     </script>
// </head>
// <body>
//     <button onclick="reverseloop();">Click Me</button>
//     <h1 id="output" class="h1"></h1>
//     <button onclick="loop();">Click Me</button>
//     <h1 id="txtoutput" class="h1"></h1>
// </body>
// </html>