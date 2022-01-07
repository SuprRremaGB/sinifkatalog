import 'package:flutter/material.dart';

class Row_Container extends StatelessWidget {
  Row_Container({required this.metin, required this.yazirengi, required this.renk});

  final String metin;
  final Color yazirengi;
  final Color renk;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: renk,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              metin,
              style: TextStyle(color: yazirengi,fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}

class List_Container extends StatelessWidget {
  List_Container(@required this.metin);

  final String metin;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.grey.shade200),
        color: Colors.white,
      ),
      width: double.infinity,
      height: 150,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 10),
               /* CircleAvatar(child: AssetImage(""),),*/
                SizedBox(width: 15),
                Text(metin, style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}





