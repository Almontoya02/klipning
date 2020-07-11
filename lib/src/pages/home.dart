import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:klipning/src/pages/favoritos.dart';
import 'package:klipning/src/pages/inicio_page.dart';
import 'package:klipning/src/pages/micuenta.dart';
import 'package:klipning/src/pages/reservas.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigatorBar(context),
      body: _callPage(currentIndex)
      
    );
  }

  _bottomNavigatorBar(BuildContext context) {
      final sizeP = MediaQuery.of(context).size;
      return new Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.white,
        primaryColor: Color.fromRGBO(209, 141, 96, 1.0),
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color:Color.fromRGBO(116, 117, 152, 1.0))
        ),
        
      ), 
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(blurRadius: 8, color: Colors.grey)]
        ),
        child: ClipRRect(
        
          borderRadius: BorderRadius.circular(20.0),
          child: BottomNavigationBar(
            
            currentIndex: currentIndex,
            onTap: (index){
              setState(() {
                currentIndex = index;
              });
            },
            elevation: 8.0,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: currentIndex==0 ?  _cupertinoIcon(0xf448,sizeP.width *0.06125): _cupertinoIcon(0xf447,sizeP.width *0.06125),
                title: Text('Inicio',style: TextStyle(fontSize: sizeP.width *0.03675))
              ),
              BottomNavigationBarItem(
                icon: currentIndex==1 ?  _cupertinoIcon(0xF443,sizeP.width *0.06125): _cupertinoIcon(0xF442,sizeP.width *0.06125),
                title: Text('Favoritos',style: TextStyle(fontSize: sizeP.width *0.03675))
              ),
              BottomNavigationBarItem(
                icon: currentIndex==2 ?  _cupertinoIcon(0xF3F4,sizeP.width *0.06125): _cupertinoIcon(0xF3F3,sizeP.width *0.06125),
                title: Text('Reservas', style: TextStyle(fontSize: sizeP.width *0.03675),)
              ),
              BottomNavigationBarItem(
                icon: currentIndex==3 ?  _cupertinoIcon(0xF41A,sizeP.width *0.06125): _cupertinoIcon(0xF419,sizeP.width *0.06125),
                title: Text('Mi cuenta',style: TextStyle(fontSize: sizeP.width *0.03675))
              ),
            ]
          ),
        ),
      ),
    );
  }

  Widget _cupertinoIcon(int codigo, double size){
     IconData icon =  IconData(codigo,
              fontFamily: CupertinoIcons.iconFont,
              fontPackage: CupertinoIcons.iconFontPackage);
    return Icon(icon,size: size);
  }

  Widget _callPage(int paginaActual) {

    switch(paginaActual){
      case 0: return InicioPage();
      case 1: return FavoritosPage();
      case 2: return ReservasPage();
      case 3: return MiCuentaPage();
      default:
      return InicioPage();
    }
  }
}