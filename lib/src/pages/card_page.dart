import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card')
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget> [
           _cardTipo1(),
           SizedBox(height: 30.0),
           _cardTipo2(),
           SizedBox(height: 30.0),
        ]
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo'),
            subtitle: Text('esto es una prueva d ds d s dfrsf d rd fd g fsd  gfg fd gfd gf d g dg d fgd g '),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget> [
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
   final card = Card(
      
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://pro2-bar-s3-cdn-cf2.myportfolio.com/f7b51595-7701-42b3-a966-bb0e4baf04df/d0a01d8f-0d02-4847-b081-52e0032d1362_rw_1920.jpg?h=c0b64791dd9578e3cc981888f49a0e19'),
            placeholder: AssetImage('assets/jar_loading.gif'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No se que poner'),
          )
        ],
      ),
    );

    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0)
            )
          ]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: card,
        ),
      );
  }
}