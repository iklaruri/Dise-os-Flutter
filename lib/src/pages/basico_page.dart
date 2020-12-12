import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0,color: Colors.grey);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
       child: Column(
         children: [
           _crearImagen(),
           _crearTitulo(),
           _crearAcciones(),
           _crearCuerpo(),
           _crearCuerpo(),
           _crearCuerpo(),
           _crearCuerpo(),
           _crearCuerpo(),
           _crearCuerpo()
         ],
       ),
      )
    );
  }

  Widget _crearImagen(){
    return Container(
        width: double.infinity,
        child: Image(
            image: NetworkImage('https://llandscapes-10674.kxcdn.com/wp-content/uploads/2019/07/lighting.jpg'),
            height: 200.0,
            fit: BoxFit.cover
        )
    );

  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Photo by Simon Matzinger',style: estiloTitulo),
                  SizedBox(height: 7.0),
                  Text('Great Landscape Photographs',style: estiloSubtitulo),
                ],
              ),
            ),
            Icon(Icons.star,color: Colors.red, size: 30.0),
            Text('41',style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE')
      ],
    );
  }

  Widget _accion(IconData icon,String texto){
    return Column(
      children: [
        Icon(icon, color: Colors.blue,size: 40.0),
        Text(texto, style: TextStyle(fontSize: 15.0,color:Colors.blue))
      ],
    );
  }

  Widget _crearCuerpo() {
    return SafeArea(
        child: (
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
          ,
          textAlign: TextAlign.justify,
          ),
      )
      )
    );

  }

}
