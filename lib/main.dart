import 'package:chat_online/chat_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());

  //Escrever no banco
  //Firestore.instance.collection("col").document("doc").setData({"texto": "Gile"});

  //Ler no Banco
  /* //Para ler todos da coleção 'col'
  QuerySnapshot snapshot = await Firestore.instance.collection("col").getDocuments();
  snapshot.documents.forEach((d){
    print(d.data);
  });
   */

  /*
  //Para ler um id ('doc') especifico
  DocumentSnapshot snapshot = await Firestore.instance.collection("col").document('doc').get();
  print(snapshot.data);
   */

  /*
  //Para receber em tempo real
  Firestore.instance.collection("col").snapshots().listen((dado) {
    dado.documents.forEach((d) {
      print(d.data);
    });
  });
   */
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        iconTheme: IconThemeData(
          color: Colors.blue,
        )
      ),
      home: ChatScreen(),
    );
  }
}
