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
    final sizeP = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(

        color: Color.fromRGBO(241, 238, 238, 1.0),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _logo(),
                SizedBox(height: sizeP.width * 0.0735,),
                _writes(),
                SizedBox(height:sizeP.width * 0.0245),
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
    final sizeP = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top:sizeP.width * 0.1),
      child: Column(
        children: <Widget>[
          Image(
            image: AssetImage('assets/logo.png'),
            width: sizeP.width * 0.3675,
            height: sizeP.width * 0.3675,
            fit: BoxFit.contain,
          ),
          SizedBox(height: sizeP.width * 0.0245,),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('KLIP', style: TextStyle(fontSize: sizeP.width * 0.0882,fontWeight: FontWeight.bold),),
            Text('NING', style: TextStyle(fontSize: sizeP.width * 0.0882,fontWeight: FontWeight.bold, color: mainColor,)),
          ],
        ),
        ],
      ),
    );

  }

  Widget _writes() {
    final sizeP = MediaQuery.of(context).size;
    return Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: sizeP.width * 0.098,),
                Text('Bienvenido', style: TextStyle(fontSize: sizeP.width * 0.0588, fontWeight: FontWeight.bold),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: sizeP.width * 0.098,),
                Text('Inicia sesión en una cuenta existente\no crea una cuenta nueva', style: TextStyle(fontSize: sizeP.width * 0.0343, color: Color.fromRGBO(36, 48, 60, 0.5))),
              ],
            ),
            
          ],
        );
  
  }

  Widget _buttons() {
    final sizeP = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top:sizeP.width * 0.02),
      child: Column(
        children: <Widget>[
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, 'home');
              }, 
              color: Color.fromRGBO(241, 238, 238, 1.0),
              child: Container(padding:EdgeInsets.symmetric(horizontal: sizeP.width * 0.0686, vertical: sizeP.width * 0.03675),child: Text('Iniciar Sesión', style: TextStyle(fontSize: sizeP.width * 0.03675,fontWeight: FontWeight.bold),)),
              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(sizeP.width * 0.0245), borderSide: BorderSide(width: sizeP.width * 0.00735)),
              elevation: 0.0,
              
            ),
            SizedBox(height: sizeP.width * 0.049,),
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, 'registro');
              }, 
              color: Color.fromRGBO(36, 48, 60, 1.0),
              textColor: Colors.white,
              child: Container(padding:EdgeInsets.symmetric(horizontal: sizeP.width * 0.0686, vertical: sizeP.width * 0.03675),child: Text('Registrarse', style: TextStyle(fontSize: sizeP.width * 0.03675,fontWeight: FontWeight.bold),)),
              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(sizeP.width * 0.0245), borderSide: BorderSide(width: sizeP.width * 0.00735, color: Color.fromRGBO(36, 48, 60, 1.0))),
              elevation: 0.0,
              
          ),
          SizedBox(height: sizeP.width * 0.1,)


        ],
      ),
    );
  
  }

  Widget _form() {
  final sizeP = MediaQuery.of(context).size;
    return Container(      
      padding: EdgeInsets.all(sizeP.width * 0.0735),
      child: Column(
        children: <Widget>[
        Container(
          height: sizeP.width * 0.14,
          child: TextField(
            style:_textStyle,
            cursorColor: Colors.black,
            keyboardType: TextInputType.emailAddress,
            
            decoration: InputDecoration(
              
              hintStyle: _textStyle,
              labelStyle: TextStyle(color: Color.fromRGBO(36, 48, 60, 0.5), fontSize: sizeP.width * 0.0392),
              fillColor: Colors.black,
              focusColor: Colors.black,
              hoverColor: Colors.black,
              
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(sizeP.width * 0.0735),
                borderSide: BorderSide(
                  width: sizeP.width * 0.00735,
                  color: Colors.black,
                ),
                
                
                
              ),  
            labelText: 'Correo:',
            prefixIcon: Icon(Icons.email, color: mainColor,size: sizeP.width * 0.05),
            ),
          ),
        ),
        SizedBox(height: sizeP.width * 0.03675,),
        Container(
          height: sizeP.width * 0.14,
          child: TextField(
            
            style:_textStyle,
            obscureText: _obscureText,
            cursorColor: Colors.black,
            decoration: InputDecoration(
            hintStyle: _textStyle,
            labelStyle: TextStyle(color: Color.fromRGBO(36, 48, 60, 0.5), fontSize: sizeP.width * 0.0392),
            fillColor: Colors.black,
            hoverColor: Colors.black,
            focusColor: Colors.black,
            enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(sizeP.width * 0.0735),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width:sizeP.width * 0.00735
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
                  color: Colors.black,
                  size: sizeP.width * 0.05,
                  ),
                ),
              prefixIcon: Icon(Icons.lock_open, color: mainColor, size: sizeP.width * 0.05,),
            ),
          ),
        ),
        SizedBox(height: sizeP.width * 0.0245),
        Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              
              Text('¿Se te olvidó tu contraseña?', style: TextStyle(fontSize: sizeP.width * 0.0294, fontWeight: FontWeight.bold),),
              SizedBox(width: 0.0,),
            ],
          ),
        ],
      ),
    );
  }
}