import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextStyle _textStyle = new TextStyle(color: Colors.black);
  Color mainColor = new Color.fromRGBO(209, 141, 96, 1.0);
  bool _obscureText= true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromRGBO(252, 252, 252, 1.0),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _logo(),
                SizedBox(height: 40.0,),
                _writes(),
                SizedBox(height:10.0),
                _form(),
                SizedBox(),
                _buttons()
              ],
           ), 
          ],
        )
      ),
    );
  }

  Widget _logo() {

    return Container(
      margin: EdgeInsets.only(top:50.0),
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
            Text('NING', style: TextStyle(fontSize: 36.0,fontWeight: FontWeight.bold, color: mainColor,)),
          ],
        ),
        ],
      ),
    );

  }

  Widget _writes() {
    
    return Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 40.0,),
                Text('Bienvenido', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 40.0,),
                Text('Inicia sesión en una cuenta existente\no crea una cuenta nueva', style: TextStyle(fontSize: 14.0, color: Color.fromRGBO(36, 48, 60, 0.5))),
              ],
            ),
            
          ],
        );
  
  }

  Widget _buttons() {
    
    return Container(
      margin: EdgeInsets.only(top:10.0),
      child: Column(
        children: <Widget>[
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, 'home');
              }, 
              color: Colors.white,
              child: Container(padding:EdgeInsets.symmetric(horizontal: 28.0, vertical: 15.0),child: Text('Iniciar Sesión', style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),)),
              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(width: 3.0)),
              elevation: 0.0,
              
            ),
            SizedBox(height: 20.0,),
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


        ],
      ),
    );
  
  }

  Widget _form() {

    return Container(
      padding: EdgeInsets.all(30.0),
      child: Column(
        children: <Widget>[
        TextField(
          style:_textStyle,
          cursorColor: Colors.black,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintStyle: _textStyle,
            labelStyle: TextStyle(color: Color.fromRGBO(36, 48, 60, 0.5)),
            fillColor: Colors.black,
            focusColor: Colors.black,
            hoverColor: Colors.black,
            
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(
                width: 3.0,
                color: Colors.black,
              ),
              
              
              
            ),  
          labelText: 'Correo:',
          prefixIcon: Icon(Icons.email, color: mainColor,size: 30.0,),

          ),
        ),
        SizedBox(height: 15.0,),
        TextField(
          style:_textStyle,
          obscureText: _obscureText,
          cursorColor: Colors.black,
          decoration: InputDecoration(
          hintStyle: _textStyle,
          labelStyle: TextStyle(color: Color.fromRGBO(36, 48, 60, 0.5)),
          fillColor: Colors.black,
          hoverColor: Colors.black,
          focusColor: Colors.black,
          enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 3.0
                ),
              ),
          labelText: 'Contraseña:',
          suffixIcon: GestureDetector(
              dragStartBehavior: DragStartBehavior.down,
              onTap: (){
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              child: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
                color: Colors.black,),
              ),
            prefixIcon: Icon(Icons.lock_open, color: mainColor, size: 30.0,),
          ),
        ),
        SizedBox(height: 10.0),
        Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              
              Text('¿Se te olvidó tu contraseña?', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),),
              SizedBox(width: 0.0,),
            ],
          ),
        ],
      ),
    );
  }
}