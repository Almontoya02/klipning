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
    final sizeP = MediaQuery.of(context).size;
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
          icon: new Icon(Icons.arrow_back, color: Colors.black, size: sizeP.width * 0.0735,),
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
                SizedBox(height: sizeP.width * 0.048,),
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
    final sizeP = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top:sizeP.width * 0.01225),
      child: Column(
        children: <Widget>[
          Image(
            image: AssetImage('assets/logo.png'),
            width: sizeP.width * 0.3675,
            height: sizeP.width * 0.3675,
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
                Text('Comencemos', style: TextStyle(fontSize: sizeP.width * 0.098, fontWeight: FontWeight.bold),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: sizeP.width * 0.098,),
                Text('Crea una cuenta para comenzar', style: TextStyle(fontSize: sizeP.width * 0.0343, color: Color.fromRGBO(36, 48, 60, 0.5))),
              ],
            ),
            
          ],
        );
  
  }

  Widget _buttons() {
    final sizeP = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom:sizeP.width * 0.0735),
      child: Column(
        children: <Widget>[

            RaisedButton(
              onPressed: (){}, 
              color: Color.fromRGBO(36, 48, 60, 1.0),
              textColor: Colors.white,
              child: Container(padding:EdgeInsets.symmetric(horizontal: sizeP.width * 0.08575, vertical: sizeP.width * 0.03675),child: Text('Registrarse', style: TextStyle(fontSize: sizeP.width * 0.03675,fontWeight: FontWeight.bold),)),
              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(sizeP.width * 0.0245), borderSide: BorderSide(width: sizeP.width * 0.0, color: Color.fromRGBO(36, 48, 60, 1.0))),
              elevation: 0.0,
              
          ),


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
              borderRadius: BorderRadius.circular(sizeP.width * 0.0735),
              borderSide: BorderSide(
                width:sizeP.width * 0.00735,
                color: Colors.black,
              ),     
            ),  
          labelText: 'Nombres:',
          prefixIcon: Icon(Icons.person_outline, color: mainColor,size: sizeP.width * 0.0735,),
          ),
        ),
        SizedBox(height: sizeP.width * 0.03675,),
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
              borderRadius: BorderRadius.circular(sizeP.width * 0.0735),
              borderSide: BorderSide(
                width: sizeP.width * 0.00735,
                color: Colors.black,
              ),     
            ),  
          labelText: 'Apellidos:',
          prefixIcon: Icon(Icons.person_pin, color: mainColor,size: sizeP.width * 0.0735,),
          ),
        ),
        SizedBox(height: sizeP.width * 0.03675,),
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
              borderRadius: BorderRadius.circular(sizeP.width * 0.0735),
              borderSide: BorderSide(
                width: sizeP.width * 0.00735,
                color: Colors.black,
              ),     
            ),  
          labelText: 'Celular:',
          prefixIcon: Icon(Icons.phone_android, color: mainColor,size: sizeP.width * 0.0735,),
          ),
        ),
        SizedBox(height: sizeP.width * 0.03675,),
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
                width: sizeP.width * 0.00735,
                color: Colors.black,
              ),     
            ),  
          labelText: 'Correo:',
          prefixIcon: Icon(Icons.email, color: mainColor,size: sizeP.width * 0.0735,),
          ),
        ),
        SizedBox(height: sizeP.width * 0.03675,),
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
                  width: sizeP.width * 0.00735
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
            prefixIcon: Icon(Icons.lock_open, color: mainColor, size: sizeP.width * 0.08575,),
          ),
        ),
        SizedBox(height: sizeP.width * 0.03675,),
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
                borderRadius: BorderRadius.circular(sizeP.width * 0.0735),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: sizeP.width * 0.00735
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
            prefixIcon: Icon(Icons.lock_outline, color: mainColor, size: sizeP.width * 0.08575,),
          ),
        ),
        
        ],
      ),
    );
  }
}