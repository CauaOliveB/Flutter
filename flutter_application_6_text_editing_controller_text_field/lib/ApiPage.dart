import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Apipage extends StatefulWidget {
  const Apipage({super.key});

  @override
  State<Apipage> createState() => _ApipageState();
}

class _ApipageState extends State<Apipage> {
  String? value;

  @override
  void initState() { // função que recarrega o estado da página
  //toda vez ao iniciar a pagina
    super.initState(); // função que busca o valor, será resetada sempre ao iniciar o app
    getvalue();
  }

  void getvalue(){

  }



  
  
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}