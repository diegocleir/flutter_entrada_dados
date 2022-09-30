import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  const EntradaRadioButton({Key? key}) : super(key: key);

  @override
  State<EntradaRadioButton> createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {

  String? _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: [

            RadioListTile(
              title: Text("Masculino"),
                value: "m",
                groupValue: _escolhaUsuario,
                onChanged: (String? escolha){
                  //print("resultado: " + escolha.toString());
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            RadioListTile(
                title: Text("Feminino"),
                value: "f",
                groupValue: _escolhaUsuario,
                onChanged: (String? escolha){
                  //print("resultado: " + escolha.toString());
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            ElevatedButton(
                onPressed: (){
                  print("Resultado: " + _escolhaUsuario.toString());
                },
                child: Text("Salvar",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
            ),


            /*Text("Masculino"),
            Radio(
                value: "m",
                groupValue: _escolhaUsuario,
                onChanged: (String? escolha){
                  print("resultado: " + escolha.toString());
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            Text("Feminino"),
            Radio(
                value: "f",
                groupValue: _escolhaUsuario,
                onChanged: (String? escolha){
                  print("resultado: " + escolha.toString());
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),*/
          ],
        ),
      ),
    );
  }
}
