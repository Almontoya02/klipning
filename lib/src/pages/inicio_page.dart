import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromRGBO(241, 238, 238, 1.0),
        
        child:ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                SafeArea(
                  child: Container(
                    padding: EdgeInsets.only(top:40.0,left:35.0),
                    child:Row(
                      children: <Widget>[
                        Text('Hola! ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),),
                        Text('Elías', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0,color:Color.fromRGBO(209, 141, 96, 1.0))) // nombre usuario
                      ],
                    )
                  ),
                ),
                SizedBox(height: 20.0,),
                _buscador(),
                SizedBox(height: 20.0,),
                _servicios(context)
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buscador() {
    return Center(
      child:ClipRRect(
        
        child: Container(
          height: 50.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 3.0), //(x,y)
                  blurRadius: 2.0,
                ),
              ],
          ),
          margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
          child: Center(
            child: TextField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  labelStyle: TextStyle(color: Color.fromRGBO(36, 48, 60, 0.5)),
                  focusColor: Colors.black,
                  hoverColor: Colors.black,
                  
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                      width: 1.0,
                      color: Colors.transparent,
                    ),      
                  ),  
                hintText: '¿Qué estás buscando?',
                prefixIcon: Icon(Icons.search, color: Colors.grey,size: 30.0,),
                ),
              ),
          ),
        ),
      ),
    );
  }

  Widget _servicios(BuildContext context){
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 35.0,),
            Text('Nuestros Servicios', style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold ),),
          ],
        ),
        Table(
          children: <TableRow>[
            TableRow(
              children: [
                _tarjet(context,'barbershop.png', 'Barberías'),
                _tarjet(context, 'peluqueria.png', 'Peluquerías'),
              ]
            ),
            TableRow(
              children: [
                _tarjet(context,'salonbelleza.png', 'Salones de belleza'),
                _tarjet(context,'unas.png', 'Salones de uñas'),
              ]
            )
          ],
        )
      ],
    );
  }

  Widget _tarjet(BuildContext context, String img, String texto){
    return ClipRRect(
      child: Container(
        decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0)
                ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 3.0), //(x,y)
                  blurRadius: 3.0,
                ),
              ],
        ),
        padding: EdgeInsets.only(top:20.0,left: 10.0, right: 10.0, bottom: 10.0),
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('assets/img/$img'),
            ),
            MaterialButton(
              height: 30.0,
              onPressed: (){
                Navigator.pushNamed(context, 'itemsServicio',arguments: texto);
              }, 
              color: Color.fromRGBO(36, 48, 60, 1.0),
              textColor: Colors.white,
              child: Container(width:200.0, child: Center(child: Text(texto, style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.normal,),))),
              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: BorderSide(width: 1.0, color: Color.fromRGBO(36, 48, 60, 1.0))),
              elevation: 0.0,
            ),
          ],
        ),
      ),
    );
  }

}