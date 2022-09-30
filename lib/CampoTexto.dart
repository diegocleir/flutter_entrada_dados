import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({Key? key}) : super(key: key);

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite um valor"
              ),
              //enabled: false,
              //maxLength: 2,
              //maxLengthEnforcement: MaxLengthEnforcement.none,
              /*style: TextStyle(
                fontSize: 25,
                color: Colors.green
              ),*/
              //obscureText: true,
              /*
              onChanged: (String texto){
                print("valor digitado:" + texto);
              },*/
              onSubmitted: (String texto){
                print("valor digitado:" + texto);
              },
              controller: _textEditingController,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print("valor digitado:"+ _textEditingController.text);
            },
            child: Text("Salvar"),
            style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green)
            ),
          )
        ],
      )
    );
  }
}
