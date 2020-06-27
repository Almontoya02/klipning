import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextStyle _textStyle = new TextStyle(color: Colors.black);
  Color mainColor = new Color.fromRGBO(209, 141, 96, 1.0);
  bool _obscureText= true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        elevation: 0.0,
        actionsIconTheme: IconThemeData(
          color:Colors.black,
          opacity: 1.0
        ),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.black, size: 30.0,),
          onPressed: () => Navigator.of(context).pop(),
        ), 
      ),
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
                _form(),
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
      margin: EdgeInsets.only(top:5.0),
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
                Text('Comencemos', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 40.0,),
                Text('Crea una cuenta para comenzar', style: TextStyle(fontSize: 14.0, color: Color.fromRGBO(36, 48, 60, 0.5))),
              ],
            ),
            
          ],
        );
  
  }

  Widget _buttons() {
    
    return Container(
      margin: EdgeInsets.only(bottom:30.0),
      child: Column(
        children: <Widget>[

            RaisedButton(
              onPressed: (){}, 
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
          keyboardType: TextInputType.text,
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
          labelText: 'Nombres:',
          prefixIcon: Icon(Icons.person_outline, color: mainColor,size: 30.0,),
          ),
        ),
        SizedBox(height: 15.0,),
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
          labelText: 'Apellidos:',
          prefixIcon: Icon(Icons.person_pin, color: mainColor,size: 30.0,),
          ),
        ),
        SizedBox(height: 15.0,),
                TextField(
          style:_textStyle,
          cursorColor: Colors.black,
          keyboardType: TextInputType.phone,
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
          labelText: 'Celular:',
          prefixIcon: Icon(Icons.phone_android, color: mainColor,size: 30.0,),
          ),
        ),
        SizedBox(height: 15.0,),
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
            prefixIcon: Icon(Icons.lock_open, color: mainColor, size: 35.0,),
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
          labelText: 'Confirmar contraseña:',
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
            prefixIcon: Icon(Icons.lock_outline, color: mainColor, size: 35.0,),
          ),
        ),
        
        ],
      ),
    );
  }
}