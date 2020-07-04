import 'package:flutter/material.dart';

class ParteTraz extends StatefulWidget {
  @override
  _ParteTrazState createState() => _ParteTrazState();
}

class _ParteTrazState extends State<ParteTraz> {
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
        child: Stack(
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
        ),
      ),
    );
  }
}
