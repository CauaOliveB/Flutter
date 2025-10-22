import 'package:flutter/material.dart';
import 'package:flutter_application_6_text_editing_controller_text_field/ApiPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginPage());
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  //Variavel que observa o que o usuário digita :)
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();

  //Variavel com as informações corretas
  String correctUser = "vinicin";
  String correctPassword = "123";

  //Variavel que mostra o erro
  String erro = "";

  //Função para validar as informações

  void login() {
    if (user.text == correctUser && password.text == correctPassword) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Apipage()),
      );
    } else {
      setState(() {
        erro = "Existem credenciais erradas";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text("Login"),

              SizedBox(
                width: 600,
                height: 100,
                child: TextField(
                  controller:
                      user, //Aqui vocÊ coloca a varivel ue observa o que o usuário digita
                  maxLength: 150, // Máximo de caracteres digitados
                  decoration: InputDecoration(
                    hintText:
                        "Insira o seu nome", //Hint = Dica, nosso famoso "Placeholder"
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        1,
                      ), //Faz a circunferência da borda
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: 600,
                height: 100,
                child: TextField(
                  obscureText: true, //Deixa a senha privada
                  controller:
                      password, //Aqui vocÊ coloca a varivel ue observa o que o usuário digita
                  maxLength: 150, // Máximo de caracteres digitados
                  decoration: InputDecoration(
                    hintText:
                        "Insira sua senha", //Hint = Dica, nosso famoso "Placeholder"
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        1,
                      ), //Faz a circunferência da borda
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: login,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,

                    // Remove o arredondamento
                  ),
                ),
                child: Icon(Icons.login_rounded, size: 60, color: Colors.black),
              ),
              Text(erro),
            ],
          ),
        ),
      ),
    );
  }
}
