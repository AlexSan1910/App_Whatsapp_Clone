import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/mensagem.model.dart';
import 'package:whatsapp_clone/view/mensagemitem.view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MensagemView extends StatelessWidget {

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: firestore.collection('mensagens').snapshots(),
          builder: (_, snapshot) {

            if(!snapshot.hasData)
              return CircularProgressIndicator();

            if(snapshot.hasError)
              return Text("Erro ao carregar os dados");

            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (_, index) => MensagemItem(
                MensagemModel("", 
                  snapshot.data!.docs[index].data()['nome'],
                  snapshot.data!.docs[index].data()['ultimaMensagem'],
                  DateTime.now()
                )
              ),
            );
          },
        ),
    );
  }
}
