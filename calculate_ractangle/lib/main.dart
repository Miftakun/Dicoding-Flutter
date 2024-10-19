import 'package:flutter/material.dart';
import 'persegi_result.dart';
import 'about_me.dart';

void main() {
  runApp(MaterialApp(
    home: const Home(),
    routes: <String, WidgetBuilder>{
      '/Halsatu': (BuildContext context) => const Home(),
      '/Haldua': (BuildContext context) => const MyProfil(),
    },
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int panjang = 0;
  int lebar = 0;

// Ganti "new TextEditingController()" menjadi "TextEditingController()"

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.view_list),
        title: const Text('Menghitung Luas'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.person_outline),
            onPressed: () {
              Navigator.pushNamed(context, '/Haldua');
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20.0), // Ganti "EdgeInsetsTween()" menjadi "EdgeInsets.all(20.0)"
            child: Column(
              children: <Widget>[
                const Padding(padding: EdgeInsets.only(top: 20.0)),

                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            panjang = int.tryParse(txt) ?? 0; // Menggunakan "int.tryParse" untuk menghindari kesalahan jika input bukan angka
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          labelText: "Panjang Persegi",
                          suffix: const Text('cm'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: 'Panjang',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            lebar = int.tryParse(txt) ?? 0; // Menggunakan "int.tryParse" untuk menghindari kesalahan jika input bukan angka
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          labelText: "Lebar Persegi",
                          suffix: const Text('cm'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: 'Lebar',
                        ),
                      ),
                    )
                  ],
                ),

                const Padding(padding: EdgeInsets.only(top: 20.0)),

                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      var route = MaterialPageRoute(
                        builder: (buildContext) =>
                            PersegiResult(panjangPersegi: panjang, lebarPersegi: lebar),
                      );
                      Navigator.of(context).push(route);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, //warna latar belakang tombol
                      padding: const EdgeInsets.all(10.0),
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: const Text('Hitung Luas'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
