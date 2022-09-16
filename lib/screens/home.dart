import 'package:flutter/material.dart';
import '../translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Language"),
            PopupMenuButton(
              icon: Icon(Icons.more_vert,color: Colors.white,),
              onSelected: (value) {
                // if value 1 show dialog
                if (value == 1)
                {
                  context.setLocale(Locale('en'));
                }
                else if (value == 2)
                {
                  context.setLocale(Locale('fr'));
                }
                else if (value == 3)
                {
                  context.setLocale(Locale('gu'));
                }
                else if (value == 4)
                {
                  context.setLocale(Locale('ru'));
                }
              },
              itemBuilder: (BuildContext bc) {
                return const [
                  PopupMenuItem(
                    child: Text("English"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text("French"),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text("Gujarati"),
                    value: 3,
                  ),
                  PopupMenuItem(
                    child: Text("Russian"),
                    value: 4,
                  ),
                ];
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              LocaleKeys.hi_text.tr(),
            ),
            Text(
              LocaleKeys.this_should_be_translated.tr(),
            ),
            const SizedBox(height: 15),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: <Widget>[
            //     ElevatedButton(
            //       onPressed: () async {
            //         await context.setLocale(Locale('en'));
            //       },
            //       child: Text(
            //         "English",
            //       ),
            //     ),
            //     ElevatedButton(
            //       onPressed: () async {
            //         await context.setLocale(Locale('ar'));
            //       },
            //       child: Text(
            //         "العربية",
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
