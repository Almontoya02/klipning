import 'package:flutter/material.dart';

class PrincipalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromRGBO(241, 238, 238, 1.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _logo(),
            SizedBox(height:30.0),
            _buttons(context)
          ],
        ), 
      ),
    );
  }

  Widget _logo() {

    return Container(
      child: Column(
        children: <Widget>[
          Image(
            image: AssetImage('assets/logo.png')
          ),
          SizedBox(height: 10.0,),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('KLIP', style: TextStyle(fontSize: 36.0,fontWeight: FontWeight.bold),),
            Text('NING', style: TextStyle(fontSize: 36.0,fontWeight: FontWeight.bold, color: Color.fromRGBO(209, 141, 96, 1.0)),),
          ],  
        ),  
        Text('Invierte en ti', style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold),)
        ],
      ),
    );

  }

  Widget _buttons(BuildContext context) {
    
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: (){
            Navigator.pushNamed(context, 'registro');
          }, 
          color: Color.fromRGBO(36, 48, 60, 1.0),
          textColor: Colors.white,
          child: Container(padding:EdgeInsets.symmetric(horizontal: 35.0, vertical: 15.0),child: Text('Registrarse', style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),)),
          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(width: 3.0, color: Color.fromRGBO(36, 48, 60, 1.0))),
          elevation: 0.0,
          
        ),
        SizedBox(height: 20.0,),
        RaisedButton(
          onPressed: (){
            Navigator.pushNamed(context, 'login');
          }, 
          color: Color.fromRGBO(241, 238, 238, 1.0),
          child: Container(padding:EdgeInsets.symmetric(horizontal: 28.0, vertical: 15.0),child: Text('Iniciar Sesión', style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),)),
          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(width: 3.0)),
          elevation: 0.0,
          
        )
      ],
    );
  
  }
}