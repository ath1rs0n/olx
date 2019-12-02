import 'package:flutter/material.dart';
import 'componentes/floatbutton.dart';
import 'componentes/itemlist.dart';
import 'componentes/tabbar.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
            ),
          ],
        ),
        backgroundColor: Colors.grey[200],
        body: Column(
          children: <Widget>[
            TabBart(),
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return ItemList();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 2,
                    color: Colors.green,
                  );
                },
              ),
            ),
          ],
          
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatButton(),
      ),
    );
  }
}
