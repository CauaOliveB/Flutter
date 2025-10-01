import 'package:flutter/material.dart';

void main() {
  runApp(const TelaHome());
}

class TelaHome extends StatelessWidget {
  const TelaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar ( title: Text("Tela assets")),
        body: Center( //Ajuda a centralizar
          child: Column( //Objetos um abaixo do outro
            children: [ //Filhos da coluna
              Row( //Disposição da linha
              children: [
                Image.network(
                "https://blog.archtrends.com/wp-content/uploads/2023/12/brazilcore.jpeg",
                width: 250,),
                
                Image.asset("assets/images/Indigena.png",
                width: 250,)
              
              ],
              )
            
            ],
          ),
      ),
      ),
    );
  }
}