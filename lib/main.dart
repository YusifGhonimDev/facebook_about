import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "About",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20.0),
                buildInfoSection(
                    icon: Icons.info_outlined,
                    text: "Talk is cheap, Show me the code.",
                    textColor: Colors.black),
                buildInfoSection(
                    icon: CupertinoIcons.globe,
                    text: "www.yusifghonim.com",
                    textColor: Colors.blue),
                buildInfoSection(
                    icon: Icons.web, text: "Developer", textColor: Colors.blue),
                const Divider(),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "See All",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5.0),
                        child: const Icon(Icons.arrow_forward_ios,
                            color: Colors.grey, size: 18.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildInfoSection(
      {required IconData icon,
      required String text,
      required Color textColor}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          Icon(icon),
          Container(
            margin: const EdgeInsets.only(left: 12.0),
            child: Text(
              text,
              style: TextStyle(color: textColor),
            ),
          ),
        ],
      ),
    );
  }
}
