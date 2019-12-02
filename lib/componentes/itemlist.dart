import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Image.network(
            "https://cdn.awsli.com.br/600x700/263/263229/produto/40928887/a73f5c62ec.jpg",
            width: 130,
            height: 150,
            fit: BoxFit.cover,
          ),
          Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Vende-se camisa Habib és", softWrap: true, style: TextStyle(fontWeight: FontWeight.w400),),
                Text("R\$ 40.00", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                Text("28, Novembro 2019 Rio Largo - AL", style: TextStyle(fontSize: 12, color: Colors.grey[600]),maxLines: 1,),
              ],
            ),
                      ),
          )
        ],
      ),
    );
  }
}
