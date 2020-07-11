import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  //final sizeP = MediaQuery.of(context).size;
  //sizeP.width * 0.049 = 20

  @override
  Widget build(BuildContext context) {
    final sizeP = MediaQuery.of(context).size;
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
                    padding: EdgeInsets.only(top:sizeP.width * 0.07,left:sizeP.width * 0.08575),
                    child:Row(
                      children: <Widget>[
                        Text('Hola! ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: sizeP.width *0.061),),
                        Text('Elías', style: TextStyle(fontWeight: FontWeight.bold, fontSize: sizeP.width *0.061,color:Color.fromRGBO(209, 141, 96, 1.0))) // nombre usuario
                      ],
                    )
                  ),
                ),
                SizedBox(height: sizeP.width *0.03,),
                _buscador(context),
                SizedBox(height: sizeP.width *0.03,),
                _servicios(context)
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buscador(BuildContext context) {
    final sizeP = MediaQuery.of(context).size;
    return Center(
      child:ClipRRect(
        
        child: Container(
          height: sizeP.width *0.1225,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(sizeP.width *0.049),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 3.0), //(x,y)
                  blurRadius: 2.0,
                ),
              ],
          ),
          margin: EdgeInsets.symmetric(horizontal: sizeP.width *0.098, vertical: sizeP.width *0.0735),
          child: Center(
            child: TextField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  labelStyle: TextStyle(color: Color.fromRGBO(36, 48, 60, 0.5)),
                  focusColor: Colors.black,
                  hoverColor: Colors.black,
                  hintStyle: TextStyle(fontSize:sizeP.width *0.039),
                  
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(sizeP.width *0.0735),
                    borderSide: BorderSide(
                      width: 1.0,
                      color: Colors.transparent,
                    ),      
                  ),  
                hintText: '¿Qué estás buscando?',
                prefixIcon: Icon(Icons.search, color: Colors.grey,size: sizeP.width *0.0735,),
                ),
              ),
          ),
        ),
      ),
    );
  }

  Widget _servicios(BuildContext context){
    final sizeP = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 35.0,),
            Text('Nuestros Servicios', style: TextStyle(fontSize: sizeP.width *0.068, fontWeight: FontWeight.bold ),),
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
    final sizeP = MediaQuery.of(context).size;
    return ClipRRect(
      child: Container(
        decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(sizeP.width * 0.0735),
                topRight: Radius.circular(sizeP.width * 0.0735),
                bottomLeft: Radius.circular(sizeP.width * 0.0735)
                ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, sizeP.width * 0.00735), //(x,y)
                  blurRadius: sizeP.width * 0.00735,
                ),
              ],
        ),
        padding: EdgeInsets.only(top:sizeP.width * 0.049,left: sizeP.width * 0.0245, right: sizeP.width * 0.0245, bottom: sizeP.width * 0.0245),
        margin: EdgeInsets.all(sizeP.width * 0.0245),
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('assets/img/$img'),
              width: sizeP.width * 0.3,
              height: sizeP.width * 0.185,
              fit: BoxFit.contain
            ),
            SizedBox(height: sizeP.width * 0.020,),
            MaterialButton(
              height: sizeP.width * 0.068,
              onPressed: (){
                Navigator.pushNamed(context, 'itemsServicio',arguments: texto);
              }, 
              color: Color.fromRGBO(36, 48, 60, 1.0),
              textColor: Colors.white,
              child: Container(width:sizeP.width * 0.6, child: Center(child: Text(texto, style: TextStyle(fontSize: sizeP.width * 0.03,fontWeight: FontWeight.normal,),))),
              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(sizeP.width * 0.049), borderSide: BorderSide(width: 1.0, color: Color.fromRGBO(36, 48, 60, 1.0))),
              elevation: 0.0,
            ),
          ],
        ),
      ),
    );
  }

}