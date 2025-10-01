import 'package:flutter/material.dart';

void main() {
  runApp(const Counter());
}




  class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int valor = 0;
void aumentar() {
  setState((){
    valor++;
  });
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //Fornece os componentes
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: Text("Counter"),),
      body: Column(
        children: [
          Text("$valor"),
          Row(
            children: [
              ElevatedButton(onPressed: (){
                aumentar();
              }, child: Icon(Icons.add)),
              ElevatedButton(onPressed: (){
                
              }, child: Icon(Icons.restore)),
              ElevatedButton(onPressed: (){
                
              }, child: Icon(Icons.remove_circle))
            ],
          )
        ],
      ),
    ),
    );
  }
}
