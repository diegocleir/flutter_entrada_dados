import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({Key? key}) : super(key: key);

  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {

  bool _escolhaUsuario = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: [

            SwitchListTile(
                title:Text("Receber notificações?"),
              value: _escolhaUsuario,
              onChanged: (bool value){
                setState(() {
                  _escolhaUsuario = value;
                });
              }
            ),
            ElevatedButton(
              onPressed: (){
                if(_escolhaUsuario){
                  print("escolha: ativar notificações");
                } else {
                  print("escolha: NÃO ativar notificações");
                }
                //print("Resultado: " + _escolhaUsuario.toString());
              },
              child: Text("Salvar",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
            ),


            /*
            Switch(
                value: _escolhaUsuario,
                onChanged: (bool value){
                  setState(() {
                    _escolhaUsuario = value;
                  });
                }
            ),
            Text("Receber notificações?")
            */
          ],
        ),
      ),
    );
  }
}
