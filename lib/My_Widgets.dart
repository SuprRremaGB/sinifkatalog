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
  List_Container(@required this.metin , this.resim);

  final String metin;
  final String resim;

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
                SizedBox(width: 30),
                CircleAvatar(child: Image.network(resim),maxRadius: 50,),
                SizedBox(width: 50),
                Text(metin, style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
/* https://otuzoglu.com/ftpalper/ogrenc_resimler/12-D/277.png */