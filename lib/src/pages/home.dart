import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigatorBar(context),
      body: Container(
        width:double.infinity,
        height:double.infinity,
        color: Color.fromRGBO(252, 252, 252, 1.0),
      ),
    );
  }

  _bottomNavigatorBar(BuildContext context) {
        return new Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.white,
        primaryColor: Color.fromRGBO(209, 141, 96, 1.0),
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color:Color.fromRGBO(116, 117, 152, 1.0))
        )
      ), 
      child: BottomNavigationBar(
        elevation: 20.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Inicio')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text('Favoritos')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('Reservas')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('Reservas')
          ),
        ]
      ),
    );
  }
}