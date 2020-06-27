import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';

class InformacionNegocio extends StatefulWidget {
  @override
  _InformacionNegocioState createState() => _InformacionNegocioState();
}

class _InformacionNegocioState extends State<InformacionNegocio> with SingleTickerProviderStateMixin {
  TabController controllerTab;
  final String description = "Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.";

  @override
  void initState() {

    super.initState();
    controllerTab = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 238, 238, 1.0),
      body: CustomScrollView(

          slivers: <Widget>[
            SliverAppBar(
              brightness: Brightness.light,
              snap: true,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
               // title: Center(child: Text('holi', style:TextStyle(color:Colors.black))),
                background: Container(
                  padding: EdgeInsets.all(18.0),
                  child: Column(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(CupertinoIcons.location_solid, color:Color.fromRGBO(209, 141, 96, 1.0),),
                          Text('Cra 80 # 30B-32 Medellín, Colombia',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500 ),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                                Icon(CupertinoIcons.phone_solid, color:Color.fromRGBO(209, 141, 96, 1.0),),
                                Text('(034)3411746 ',style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500,))
 
                            ],
                          ),
                          Row(
                            children: <Widget>[
                                Icon(CupertinoIcons.clock, color:Color.fromRGBO(209, 141, 96, 1.0),),
                                Text('07:00-20:00 ',style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500,))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              pinned: true,
              title: Text('Barbería Brand'),
              textTheme: TextTheme(
                headline6: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
            
              ),
              expandedHeight: 160.0,
              leading: new IconButton(
                icon: new Icon(Icons.arrow_back, color: Colors.black, size: 30.0,),
                onPressed: () => Navigator.of(context).pop(),
              ), 
              actionsIconTheme: IconThemeData(
                color:Colors.black,
                opacity: 1.0
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(IconData(0xF37C, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage), color: Color.fromRGBO(209, 141, 96, 1.0),size: 30.0,), 
                  onPressed: (){}
                ),
                IconButton(
                  icon: Icon(CupertinoIcons.heart,size: 30.0,color:Color.fromRGBO(209, 141, 96, 1.0)), 
                  onPressed: (){}
                )
              ],
              backgroundColor: Color.fromRGBO(241, 238, 238, 1.0),
              bottom: new TabBar(
              unselectedLabelColor:Color.fromRGBO(36, 48, 60, 1.0),
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: new BubbleTabIndicator(
                  indicatorHeight: 25.0,
                  indicatorColor: Color.fromRGBO(36, 48, 60, 1.0),
                  tabBarIndicatorSize: TabBarIndicatorSize.tab,
                ),
              tabs: <Widget>[
                Tab(
                  child: Text('Servicios', style: TextStyle(fontSize: 15,  fontWeight: FontWeight.w500),),
                ),
                Tab(
                  child: Text('Galería', style: TextStyle(fontSize: 15,  fontWeight: FontWeight.w500),),
                ),
                Tab(
                  child: Text('Opiniones', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                ),
              ],
              controller: controllerTab,
              ),
                    
            ),
            SliverFillRemaining(
              child: TabBarView(
                controller: controllerTab,
                children: [
                  _servicios(),
                  _galeria(),
                  _comentarios(),
                ]
              ),
          
            ),
          
          
          ]
        ),

      );
  }

  Widget _servicios() {
    return ListView(
      padding: EdgeInsets.all(0.0),
      children: <Widget>[
        Column(
          children: <Widget>[
            _tarjetService('Corte','18.0','corte'),
            _tarjetService('Corte + barba','23.0','maquina'),
            _tarjetService('Corte','18.0','corte'),
            _tarjetService('Corte + barba','23.0','maquina'),
            _tarjetService('Corte','18.0','corte'),
            _tarjetService('Corte + barba','23.0','maquina'),
            _tarjetService('Corte','18.0','corte'),
            _tarjetService('Corte + barba','23.0','maquina'),
            _tarjetService('Corte','18.0','corte'),
            _tarjetService('Corte + barba','23.0','maquina'),
            _tarjetService('Corte','18.0','corte'),
            _tarjetService('Corte + barba','23.0','maquina'),

 
          ],
       )
      ],
    );
  }

  Widget _tarjetService(String nombre,String precio, String icono) {
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
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(247, 244, 245, 1.0),
                  radius: 40.0,
                  child: ClipRRect(
                    child: Image.asset('assets/icons/$icono.png'),
                  ),
                  
                ),
                SizedBox(width: 10.0,),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 250.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(nombre, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),),
                            SizedBox(),
                            Row(
                              children: <Widget>[
                                Text('\$$precio',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.w500),),
                                Text('mil',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w500))
                              ],
                            )
                            
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
                                  Text('El corte de pelo masculino,\nadicionalmente disfruta\nintensamente de un arreglo de \nbarba con nuestros barberos.',style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500),),
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
                              child: Container( child: Center(child: Text('Solicitar', style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.normal),))),
                              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: BorderSide(width: 1.0, color: Color.fromRGBO(36, 48, 60, 1.0))),
                              
                            ),
                            
                          ],
                        ),
                      ),
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

  Widget _galeria() {
    return ListView(
        padding: EdgeInsets.all(0.0),
        children:<Widget>[ 
        Table(
        children: <TableRow>[
          TableRow(
            children: [
              _image('https://i.pinimg.com/originals/90/fc/f2/90fcf27f3c2ff892f6fb13ae0ecba694.jpg'),
              _image('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQk6cgL4bC6oL4c6B3mWeNo88bd7FJ2yqZjGA&usqp=CAU'),
              _image('https://i.pinimg.com/originals/90/fc/f2/90fcf27f3c2ff892f6fb13ae0ecba694.jpg')
            ]
          ),
          TableRow(
            children: [
              _image('https://i.pinimg.com/originals/90/fc/f2/90fcf27f3c2ff892f6fb13ae0ecba694.jpg'),
              _image('https://ath2.unileverservices.com/wp-content/uploads/sites/5/2019/03/cortes-de-pelo-con-barba3-782x439.jpg'),
              _image('https://laverdadnoticias.com/__export/1583760373690/sites/laverdad/img/2020/03/09/cortes_de_cabello_para_mujeres_que_seran_tendencia_modelos_chanel.jpg_423682103.jpg')
            ]
          ),
        ],
      ),
      ]
    );
  }

  Widget _image(String uri) {
    return Container(
      margin: EdgeInsets.all(7.0),
      child: ClipRRect(
          
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          child: FadeInImage(
          fit: BoxFit.cover,
          width: 150.0,
          height: 150.0,
          placeholder: AssetImage('assets/loading.gif'), 
          image: NetworkImage(uri)
        ),
      ),
    );
  }

  Widget _comentarios(){
    return ListView(
      children: <Widget>[
        _comentario(),
        _comentario(),
        _comentario(),
        _comentario(),
        _comentario(),
        _comentario(),
        _comentario(),
        _comentario(),
        _comentario(),
      ],
    );
  }
  
  Widget _comentario() {

      return Container(
        width: 200.0,
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
        child: Card(
          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: BorderSide(width: 1.0, color: Colors.transparent)),
          elevation: 1.0,
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
                      image: NetworkImage('https://scontent.feoh3-1.fna.fbcdn.net/v/t1.0-9/59470919_2066916543356491_1962542631112146944_o.jpg?_nc_cat=101&_nc_sid=09cbfe&_nc_eui2=AeE83sMcwBorf2_rrC-juZa_G1R9T0eKCSEbVH1PR4oJIWIUsRb541LBNBcEtNJbbkv-YscBKj05TydFHsKiPbQv&_nc_oc=AQnMMIbfACb3q0V3Iv5j5rtnx2KAOALuc-joUOF-hGKWNB3Rztpmm43NIJfleZoxKmw&_nc_ht=scontent.feoh3-1.fna&oh=188f13730b9bd7ea950d263a970b3714&oe=5F1CA469'),
                      ),  
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              SizedBox(width: 10.0,),
                              Text('Pepito Perez', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),),
                              SizedBox(width: 45.0,),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.star,color:  Color.fromRGBO(209, 141, 96, 1.0), size: 20.0,),
                                  Icon(Icons.star,color:  Color.fromRGBO(209, 141, 96, 1.0), size: 20.0,),
                                  Icon(Icons.star,color:  Color.fromRGBO(209, 141, 96, 1.0), size: 20.0,),
                                  Icon(Icons.star,color:  Color.fromRGBO(209, 141, 96, 1.0), size: 20.0,),
                                  Icon(Icons.star_half,color:  Color.fromRGBO(209, 141, 96, 1.0), size: 20.0,)
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(),

                            ],
                          ),
                        ),
                        Container(width:250,child: DescriptionTextWidget(text:description))
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

class DescriptionTextWidget extends StatefulWidget{

  final String text;

  DescriptionTextWidget({@required this.text});

  @override
  _DescriptionTextWidgetState createState() => new _DescriptionTextWidgetState();
  
  
}
  
class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  
  String primeraMitad;
  String segundaMitad;

  bool flag= true;

  @override
  void initState() {
    super.initState();
    if(widget.text.length>55){
      primeraMitad = widget.text.substring(0,55);
      segundaMitad = widget.text.substring(55, widget.text.length);
    }else{
      primeraMitad= widget.text;
      segundaMitad = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: segundaMitad.isEmpty
          ? new Text(primeraMitad)
          : new Column(
            children: <Widget>[
              new Text(flag? (primeraMitad):(primeraMitad+segundaMitad)),
              new InkWell(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new Text(
                      flag ? "Mostrar más" : "Mostrar menos",
                      style:new TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                onTap: (){
                  setState(() {
                    flag = !flag;
                  });
                },
              ),
            ],
          )
    );

  }



}


// appBar: AppBar(
//           actionsIconTheme: IconThemeData(
//             color:Colors.black,
//             opacity: 1.0
//           ),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(IconData(0xF37C, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage), color: Color.fromRGBO(209, 141, 96, 1.0),size: 30.0,), 
//               onPressed: (){}
//             ),
//             IconButton(
//               icon: Icon(IconData(0xF387, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage), color: Color.fromRGBO(209, 141, 96, 1.0),size: 30.0,), 
//               onPressed: (){}
//             ),
//           ],
//           leading: new IconButton(
//             icon: new Icon(Icons.arrow_back, color: Colors.black, size: 30.0,),
//             onPressed: () => Navigator.of(context).pop(),
//           ), 
//             backgroundColor: Color.fromRGBO(252, 252, 252, 1.0),
//             bottom: new TabBar(
//               unselectedLabelColor:Color.fromRGBO(36, 48, 60, 1.0),
//               indicatorSize: TabBarIndicatorSize.tab,
//               indicator: new BubbleTabIndicator(
//                 indicatorHeight: 25.0,
//                 indicatorColor: Color.fromRGBO(36, 48, 60, 1.0),
//                 tabBarIndicatorSize: TabBarIndicatorSize.tab,
//             ),
//               tabs: <Widget>[
//                 Tab(
//                   child: Text('Servicios', style: TextStyle(fontSize: 18,  fontWeight: FontWeight.w500),),
//                 ),
//                 Tab(
//                   child: Text('Galería', style: TextStyle(fontSize: 18,  fontWeight: FontWeight.w500),),
//                 ),
//                 Tab(
//                   child: Text('Comentarios', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
//                 ),
//               ],
//               ),
//         ),