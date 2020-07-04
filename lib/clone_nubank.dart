import 'package:flutter/material.dart';
import 'package:clone_nubank/parte_traz.dart';

class CloneNubank extends StatefulWidget {
  @override
  _CloneNubankState createState() => _CloneNubankState();
}

class _CloneNubankState extends State<CloneNubank> {
  bool _vira = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(109, 33, 119, 1),
        title: Text('Cartão do Nubank'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.credit_card),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(153, 51, 153, 0.5),
      body: SafeArea(
        child: GestureDetector(
          child: _vira ? stackFrente() : stackTraz(),
          onTap: () => setState(() => _vira = !_vira),
        ),
      ),
    );
  }

  Stack stackTraz() {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 150,
          right: 12,
          child: Container(
            width: 335,
            height: 230,
            decoration: BoxDecoration(
              color: Color.fromRGBO(109, 33, 119, 1),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Positioned(
          top: 160,
          right: 12,
          child: Container(
            width: 335,
            height: 80,
            color: Colors.white54,
          ),
        ),
        Positioned(
          top: 345,
          left: 30,
          child: Container(
            child: Text(
              '9999 9999 9999 9999 9999',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
        ),
        Positioned(
          top: 300,
          right: 15,
          width: 80,
          height: 80,
          child: Container(
            child: Image.asset(
              'assets/cirrus.png',
            ),
          ),
        )
      ],
    );
  }

  Stack stackFrente() {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 150,
          right: 12,
          child: Container(
            width: 335,
            height: 230,
            decoration: BoxDecoration(
              color: Color.fromRGBO(109, 33, 119, 1),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Positioned(
          top: 160,
          right: 25,
          child: Container(
            width: 80,
            height: 80,
            // aspectRatio: 4.0 / 2.5,
            child: Image.asset('assets/mastercard.png'),
          ),
        ),
        Positioned(
          top: 220,
          left: 50,
          child: Container(
            width: 55,
            height: 55,
            // aspectRatio: 4.0 / 2.5,
            child: Image.asset('assets/chip.png'),
          ),
        ),
        Positioned(
          top: 230,
          left: 110,
          child: Container(
            width: 30,
            height: 30,
            // aspectRatio: 4.0 / 2.5,
            child: Image.asset(
              'assets/nfc.png',
              color: Colors.white54,
            ),
          ),
        ),
        Positioned(
          top: 270,
          left: 20,
          child: Container(
            width: 140,
            height: 140,
            // aspectRatio: 4.0 / 2.5,
            child: Image.asset(
              'assets/nu_logo.png',
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          top: 330,
          left: 140,
          child: Container(
            child: Text(
              'Lucas de almeida',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
