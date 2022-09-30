import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  const EntradaCheckbox({Key? key}) : super(key: key);

  @override
  State<EntradaCheckbox> createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {

  bool? _comidaBrasileira = false;
  bool? _comidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: [
            CheckboxListTile(
              title: Text("Comida Brasileira"),
              subtitle: Text("A melhor comida do mundo!!"),
              //activeColor: Colors.red,
              //selected: true,
              //secondary: Icon(Icons.add_box),
              value: _comidaBrasileira,
              onChanged: (bool? value){
                //print("Checkbox: " + value.toString());
                setState(() {
                  _comidaBrasileira = value;
                });
              },
            ),
            CheckboxListTile(
              title: Text("Comida Mexicana"),
              subtitle: Text("A melhor comida do mundo!!"),
              //activeColor: Colors.red,
              //selected: true,
              //secondary: Icon(Icons.add_box),
              value: _comidaMexicana,
              onChanged: (bool? value){
                //print("Checkbox: " + value.toString());
                setState(() {
                  _comidaMexicana = value;
                });
              },
            ),
            ElevatedButton(
                onPressed: (){
                  print(
                    "Comida Brasileira: " + _comidaBrasileira.toString() +
                        " Comida Mexicana: " + _comidaMexicana.toString()
                  );
                },
                child: Text(
                    "Salvar",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
            )
            /*Text("Comida Brasileira"),
            Checkbox(
                value: _estaSelecionado,
                onChanged: (bool? value){
                  print("Checkbox: " + value.toString());
                  setState(() {
                    _estaSelecionado = value;
                  });
                },
            )*/
          ],
        ),
      ),
    );
  }
}
