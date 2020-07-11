import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ItemServicioPage extends StatefulWidget {
  
  
  @override
  _ItemServicioPageState createState() => _ItemServicioPageState();

}

class _ItemServicioPageState extends State<ItemServicioPage> {
  
  @override
  Widget build(BuildContext context) {
    final sizeP = MediaQuery.of(context).size;

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
        title: Text(tipo, style: TextStyle(color: Colors.black, fontSize: sizeP.width * 0.0588),),
        actions: <Widget>[
          IconButton( 
            icon: Icon(IconData(0xF46E, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage), color: Color.fromRGBO(209, 141, 96, 1.0),size: sizeP.width * 0.0735,), 
            onPressed: (){}
          ),
        ],
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.black, size: sizeP.width * 0.0588,),
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
                Divider(color: Colors.transparent,height: sizeP.width * 0.03675),
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
    final sizeP = MediaQuery.of(context).size;
    return Center(
      child:ClipRRect(
        
        child: Container(
          height: sizeP.width *0.1225,
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
    final sizeP = MediaQuery.of(context).size;
    return Container(
      
      margin: EdgeInsets.symmetric(horizontal: sizeP.width * 0.0245, vertical: 0.0),
      child: Card(
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: BorderSide(width: 1.0, color: Colors.transparent)),
        elevation: 20.0,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: sizeP.width * 0.0245, vertical: sizeP.width * 0.0245),
          child: Container(
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(sizeP.width * 0.098),
                  child: FadeInImage(
                    fit: BoxFit.cover,
                    width: sizeP.width * 0.196,
                    height:sizeP.width * 0.196,
                    placeholder: AssetImage('assets/loading.gif'), 
                    image: NetworkImage('https://i.pinimg.com/736x/a9/40/92/a9409281fa230ecd40b7f6e5f0594159.jpg'),
                    ),  
                ),
                SizedBox(width: sizeP.width * 0.0245),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: sizeP.width * 0.65,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(width: sizeP.width * 0.577, child: Text('Barbería brandadas', style: TextStyle(fontSize: sizeP.width * 0.0392, fontWeight: FontWeight.bold),)),
                            SizedBox(),
                            Icon(Icons.stars,color:  Color.fromRGBO(209, 141, 96, 1.0), size: sizeP.width * 0.06125,)
                          ],
                        ),
                      ),
                      Container(
                        width: sizeP.width * 0.65,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.star,size: sizeP.width * 0.06615, color:  Color.fromRGBO(209, 141, 96, 1.0),),
                                  Text('4.3',style: TextStyle(fontSize: sizeP.width * 0.04, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          
                            MaterialButton(
                              height: sizeP.width * 0.06615,
                              onPressed: (){
                                Navigator.pushNamed(context, 'informacionNegocio');
                              }, 
                              color: Color.fromRGBO(36, 48, 60, 1.0),
                              textColor: Colors.white,
                              child: Container( child: Center(child: Text('Ver más', style: TextStyle(fontSize: sizeP.width * 0.0294,fontWeight: FontWeight.normal),))),
                              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(sizeP.width * 0.049), borderSide: BorderSide(width: 1.0, color: Color.fromRGBO(36, 48, 60, 1.0))),
                              
                            ),
                            
                          ],
                        ),
                      ),
                      Container(width: sizeP.width * 0.65,child: Text('Cra 80 # 30B-32, Medellín')),
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