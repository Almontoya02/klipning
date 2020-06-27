import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ItemServicioPage extends StatefulWidget {
  
  
  @override
  _ItemServicioPageState createState() => _ItemServicioPageState();

}

class _ItemServicioPageState extends State<ItemServicioPage> {
  @override
  Widget build(BuildContext context) {
    

    final tipo  = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        backgroundColor: Color.fromRGBO(241, 238, 238, 1.0),
       appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
        actionsIconTheme: IconThemeData(
          color:Colors.black,
          opacity: 1.0
        ),
        title: Text(tipo, style: TextStyle(color: Colors.black, fontSize: 24.0),),
        actions: <Widget>[
          IconButton(
            icon: Icon(IconData(0xF46E, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage), color: Color.fromRGBO(209, 141, 96, 1.0),size: 30.0,), 
            onPressed: (){}
          ),
        ],
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.black, size: 24.0,),
          onPressed: () => Navigator.of(context).pop(),
        ), 
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Color.fromRGBO(241, 238, 238, 1.0),
            child: Column(
              children: <Widget>[
                _buscador(),
                Divider(color: Colors.transparent,height: 15.0),
                _tarjet(),
                _tarjet(),
                _tarjet(),
                _tarjet(),  
                _tarjet(),
                _tarjet(),
                _tarjet(),
                _tarjet(),
                _tarjet(),
                _tarjet(),
                _tarjet(),
                _tarjet(),
                _tarjet(),
                _tarjet(),
              ],
            ),
          )
        ],
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
                  blurRadius: 1.0,
                ),
              ],
          ),
          margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
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

  Widget _tarjet(){
    return Container(
      
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
      child: Card(
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: BorderSide(width: 1.0, color: Colors.transparent)),
        elevation: 20.0,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Container(
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(40.0),
                  child: FadeInImage(
                    fit: BoxFit.cover,
                    width: 80,
                    height: 80,
                    placeholder: AssetImage('assets/loading.gif'), 
                    image: NetworkImage('https://i.pinimg.com/736x/a9/40/92/a9409281fa230ecd40b7f6e5f0594159.jpg'),
                    ),  
                ),
                SizedBox(width: 10.0,),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 250.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Barbería brand', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),),
                            SizedBox(),
                            Icon(Icons.stars,color:  Color.fromRGBO(209, 141, 96, 1.0), size: 30.0,)
                          ],
                        ),
                      ),
                      Container(
                        width: 250.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.star, color:  Color.fromRGBO(209, 141, 96, 1.0),),
                                  Text('4.3',style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            SizedBox(),
                            MaterialButton(
                              height: 27.0,
                              onPressed: (){
                                Navigator.pushNamed(context, 'informacionNegocio');
                              }, 
                              color: Color.fromRGBO(36, 48, 60, 1.0),
                              textColor: Colors.white,
                              child: Container( child: Center(child: Text('Ver más', style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.normal),))),
                              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: BorderSide(width: 1.0, color: Color.fromRGBO(36, 48, 60, 1.0))),
                              
                            ),
                            
                          ],
                        ),
                      ),
                      Text('Cra 80 # 30B-32, Medellín'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}