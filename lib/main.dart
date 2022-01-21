import 'package:flutter/material.dart';
import 'package:sinifkatalog/My_Widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Benim Uygulama',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool dokuz = true;
  bool onlar = false;
  bool onbirler = false;
  bool onikiler = false;

  void degistir() {
    setState(() {
      dokuz = true;
      onlar = false;
      onbirler = false;
      onikiler = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sınıf Kataloğu"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    dokuz = true;
                    onlar = false;
                    onbirler = false;
                    onikiler = false;
                  });
                },
                child: Row_Container(
                    metin: " 9 ", renk: Colors.yellow, yazirengi: Colors.red),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    dokuz = false;
                    onlar = true;
                    onbirler = false;
                    onikiler = false;
                  });
                },
                child: Row_Container(
                    metin: "10", renk: Colors.yellow, yazirengi: Colors.red),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    dokuz = false;
                    onlar = false;
                    onbirler = true;
                    onikiler = false;
                  });
                },
                child: Row_Container(
                    metin: "11", renk: Colors.yellow, yazirengi: Colors.red),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    dokuz = false;
                    onlar = false;
                    onbirler = false;
                    onikiler = true;
                  });
                },
                child: Row_Container(
                    metin: "12", renk: Colors.yellow, yazirengi: Colors.red),
              ),
            ],
          ),
          Divider(
            height: 2,
            color: Colors.grey,
          ),
          Visibility(
            visible: dokuz,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row_Container(
                    metin: "9/A", renk: Colors.teal, yazirengi: Colors.black),
                Row_Container(
                    metin: "9/B", renk: Colors.teal, yazirengi: Colors.black),
                Row_Container(
                    metin: "9/D", renk: Colors.teal, yazirengi: Colors.black),
              ],
            ),
          ),
          Visibility(
            visible: onlar,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row_Container(
                    metin: "10/A", renk: Colors.teal, yazirengi: Colors.black),
                Row_Container(
                    metin: "10/B", renk: Colors.teal, yazirengi: Colors.black),
                Row_Container(
                    metin: "10/C", renk: Colors.teal, yazirengi: Colors.black),
                Row_Container(
                    metin: "10/D", renk: Colors.teal, yazirengi: Colors.black),
              ],
            ),
          ),
          Visibility(
            visible: onbirler,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row_Container(
                    metin: "11/A", renk: Colors.teal, yazirengi: Colors.black),
                Row_Container(
                    metin: "11/B", renk: Colors.teal, yazirengi: Colors.black),
                Row_Container(
                    metin: "11/C", renk: Colors.teal, yazirengi: Colors.black),
                Row_Container(
                    metin: "11/D", renk: Colors.teal, yazirengi: Colors.black),
              ],
            ),
          ),
          Visibility(
            visible: onikiler,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row_Container(
                    metin: "12/A", renk: Colors.teal, yazirengi: Colors.black),
                Row_Container(
                    metin: "12/B", renk: Colors.teal, yazirengi: Colors.black),
                Row_Container(
                    metin: "12/C", renk: Colors.teal, yazirengi: Colors.black),
                Row_Container(
                    metin: "12/D", renk: Colors.teal, yazirengi: Colors.black),
              ],
            ),
          ),
          Divider(
            height: 2,
            color: Colors.grey,
          ),
          Expanded(
            child: ListView(
              children: [
                List_Container("Alper Alp","images/12-D/277.JPG"),
                List_Container("Görkem Buzdere",""),
                List_Container("Erdal Enes Kara",""),
                List_Container("İbrahim Özkaracan",""),
                List_Container("Yunus Erkan",""),
                List_Container("Alpera",""),
                List_Container("Süpürge",""),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
