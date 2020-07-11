import 'package:flutter/material.dart';

class PrincipalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sizeP = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromRGBO(241, 238, 238, 1.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _logo(context),
            SizedBox(height:sizeP.width * 0.15),
            _buttons(context)
          ],
        ), 
      ),
    );
  }

  Widget _logo(BuildContext context) {
  final sizeP = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: <Widget>[
          Image(
            image: AssetImage('assets/logo.png'),
            width: sizeP.width * 0.35,
            height: sizeP.width * 0.35,
            fit: BoxFit.contain,
          ),
          SizedBox(height: sizeP.width * 0.0245,),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('KLIP', style: TextStyle(fontSize: sizeP.width * 0.0882,fontWeight: FontWeight.bold),),
            Text('NING', style: TextStyle(fontSize: sizeP.width * 0.0882,fontWeight: FontWeight.bold, color: Color.fromRGBO(209, 141, 96, 1.0)),),
          ],  
        ),  
        Text('Invierte en ti', style: TextStyle(fontSize: sizeP.width * 0.0339,fontWeight: FontWeight.bold),)
        ],
      ),
    );

  }

  Widget _buttons(BuildContext context) {
    final sizeP = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: (){
            Navigator.pushNamed(context, 'registro');
          }, 
          color: Color.fromRGBO(36, 48, 60, 1.0),
          textColor: Colors.white,
          child: Container(padding:EdgeInsets.symmetric(horizontal: 35.0, vertical: 15.0),child: Text('Registrarse', style: TextStyle(fontSize: sizeP.width * 0.03675,fontWeight: FontWeight.bold),)),
          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(width: 3.0, color: Color.fromRGBO(36, 48, 60, 1.0))),
          elevation: 0.0,
          
        ),
        SizedBox(height: 20.0,),
        RaisedButton(
          onPressed: (){
            Navigator.pushNamed(context, 'login');
          }, 
          color: Color.fromRGBO(241, 238, 238, 1.0),
          child: Container(padding:EdgeInsets.symmetric(horizontal: 28.0, vertical: 15.0),child: Text('Iniciar Sesión', style: TextStyle(fontSize: sizeP.width * 0.03675,fontWeight: FontWeight.bold),)),
          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(width: 3.0)),
          elevation: 0.0,
          
        )
      ],
    );
  
  }
}