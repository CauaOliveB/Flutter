import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(title: Text("Flutter"), centerTitle: true),

        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  width: 150,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 5.0, color: Colors.black),
                    color: Color.fromARGB(255, 215, 14, 255),
                  ),
                  child: Image.network(
                    "https://img.mypcards.com/img/2/1839/pokemon_sv2_063_193/pokemon_sv2_063_193_en.jpg",
                    width: 150,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 150,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromARGB(255, 215, 14, 255),
                  ),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi1aJWwVxrB8BWQtS94o_WkYlWyUA9oGA2nzwf2VudJp60VCtk3eiuWrkxP_dcDkYiD7E&usqp=CAU",
                    width: 150,
                  ),
                ),
              ],
            ),
            SizedBox(width: 20),
            Column(
              children: [
                Column(
                  children: [
                    Container(
                      width: 150,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 215, 14, 255),
                      ),
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgHPInw6n2HnV945wJ090V9y2YjOY98IpkfpqktWeX7JKVwklYoyS37tXUgq6lzQBxyxk&usqp=CAU",
                        width: 150,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 150,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 215, 14, 255),
                      ),
                      child: Image.network(
                        "https://wallpapers-clan.com/wp-content/uploads/2023/11/happy-pikachu-pokemon-desktop-wallpaper-preview.jpg",
                        width: 150,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// void main() {
//   runApp( MyApp()); //É a função responsável por rodar o app
// }

// //statless
// class MyApp extends StatelessWidget {
//   //Classe estática é a minha tela
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // De onde eu retiro os componentes que preciso
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         //Scaffold = Quem separa o app em até 3 partes. Apppbar/Body/Footer
//         appBar: AppBar(
//           title: Text("App Store", style: TextStyle(fontSize: 50, color: Colors.white70),),
//           backgroundColor:  Color.fromARGB(123, 165, 198, 57),
//           centerTitle: true,
//           toolbarHeight: 100,
//         ), // Barra superior da tela.
//         body: Column(
//           //elemento um abaixo do outro
//           // mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(width: 50, 
//             height: 50, 
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color:  Color.fromARGB(255, 215, 14, 255), 
//             ),
//             child: Center(
//               child: Text("1", style: TextStyle(fontSize:20, height: 20, color: Colors.black)),
//             ),
//             ),
//             Container(width: 50, height: 50, color:  Color(0xFF001D6E)),
//             Container(width: 50, height: 50, color:  Color(0xFF661B09)),
//             Row(
//               //elemento um ao lado do outro
//               // mainAxisAlignment: MainAxisAlignment.spaceAround,//eixo principal y 
//               // crossAxisAlignment: CrossAxisAlignment.center, //eixo secundário x
//               children: [
//                 Container(
//                   width: 150, //Porcentagem
//                   height: double.infinity, //Porcentagem
//                   color:  Color(0xFFFF3705),
//                 ),
//                 Container(
//                   width: 50,
//                   height: 50,
//                   color:  Color.fromARGB(255, 229, 255, 0),
//                 ),
//                 Container(
//                   width: 50,
//                   height: 50,
//                   color:  Color.fromARGB(255, 255, 52, 1),
//                 ),
//                 Container(
//                   width: 50,
//                   height: 50,
//                   color:  Color.fromARGB(255, 255, 51, 0),
//                 ),
//               ],
//             ),
//           ],
//         ),

//         // Conteúdo da página
//       ),
//     );
//   }
// }
