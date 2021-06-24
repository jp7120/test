import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  final locales = [
    {'name': 'English', 'locale': Locale('en', 'US')},
    {'name': 'Tamil', 'locale': Locale('tm', 'IN')},
    {'name': 'Hindi', 'locale': Locale('hi', 'IN')},
  ];
  updateLocale(Locale locale, BuildContext context) {
    // Navigator.of(context).pop();
    Get.back();
    Get.updateLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("appBar".tr),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Spacer(),
            ElevatedButton(
              
                onPressed: () {
                  // showDialog(
                  //     context: context,
                  //     builder: (_) => AlertDialog(
                  //           title: Text("Choose your language"),
                  //           content: Container(
                  //             width: double.maxFinite,
                  //             child: ListView.separated(
                  //                 shrinkWrap: true,
                  //                 itemBuilder: (context, i) {
                  //                   return InkWell(
                  //                       onTap: () {
                  //                         updateLocale(
                  //                             locales[i]['locale'], context);
                  //                       },
                  //                       child: Padding(
                  //                         padding: const EdgeInsets.all(14.0),
                  //                         child: Text(locales[i]['name']),
                  //                       ));
                  //                 },
                  //                 separatorBuilder: (context, i) {
                  //                   return Divider(
                  //                     color: Colors.black,
                  //                   );
                  //                 },
                  //                 itemCount: 3),
                  //           ),
                  //         ));
                  Get.defaultDialog(
                    title: "Change the language",
                    content: Container(
                      width: double.maxFinite,
                      height: 200,
                      child: ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (context, i) {
                            return InkWell(
                                onTap: () {
                                  updateLocale(locales[i]['locale'], context);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Text(locales[i]['name']),
                                ));
                          },
                          separatorBuilder: (context, i) {
                            return Divider(
                              color: Colors.black,
                            );
                          },
                          itemCount: 3),
                    ),
                  );
                },
                child: Center(
                  child: Text("languageChange".tr),
                  
                )),
            Spacer(),
            ElevatedButton(
                onPressed: () {},
                child: Center(
                  child: Text('button'.tr),
                )),
            Spacer()
          ],
        ),
      ),
    );
  }
}

class _ {}
