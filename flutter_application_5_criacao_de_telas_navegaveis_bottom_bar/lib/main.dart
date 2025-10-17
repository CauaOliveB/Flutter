import 'package:flutter/material.dart';
import 'package:flutter_application_5_criacao_de_telas_navegaveis_bottom_bar/tela1.dart';
import 'package:flutter_application_5_criacao_de_telas_navegaveis_bottom_bar/tela2.dart';
import 'package:flutter_application_5_criacao_de_telas_navegaveis_bottom_bar/tela3.dart';
 
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavBar()
    );
 
  }
}
 
class NavBar extends StatefulWidget {
  const NavBar({super.key});
 
  @override
  State<NavBar> createState() => _NavBarState();
}
 
class _NavBarState extends State<NavBar> {
  int myIndex = 0;// Variavel que mosta a posição da tela desejada

  void changeIndex(int index){ //Função que muda o index(Tela)

    setState(() {
      myIndex = index;
    });
  }

  // Lista do tipo widget (Que é qualquer componente ou tela)
  // screens é onome da lista, mas pode ser o que vocÊ quiser
  List<Widget> screens = [ 
    Tela1(),
    Tela2(),
    Tela3()

  ];
 
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: screens.elementAt(myIndex),
        bottomNavigationBar: 
        BottomNavigationBar(items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(label:"Tela 1", icon: Icon(Icons.local_airport)),
          BottomNavigationBarItem(label:"Tela 2", icon: Icon(Icons.airplane_ticket)),
          BottomNavigationBarItem(label:"Tela 3", icon: Icon(Icons.flag))
        ],
        currentIndex: myIndex,
        onTap: changeIndex,
        ),

      ),
    );
  }
}
 