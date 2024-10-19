import 'package:flutter/material.dart';

class PersegiResult extends StatelessWidget {
  final int panjangPersegi;
  final int lebarPersegi;

  const PersegiResult({super.key, required this.panjangPersegi, required this.lebarPersegi});

  @override
  Widget build(BuildContext context) {
    double luas = (panjangPersegi * lebarPersegi * 1.0);
    double keliling = (2 * (panjangPersegi + lebarPersegi * 1.0));

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('HASIL'),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.white,
              ),
            ),
            const Text(
              'Luas Persegi Panjang :',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),
            Text(
              ' $luas ',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            const Text(
              'Keliling Persegi adalah :',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),
            Text(
              ' $keliling ',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
