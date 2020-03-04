import 'package:flutter/material.dart';
import '../model/product.dart';
import '../services/product.dart';

class ProductResultListWidget extends StatelessWidget{
  final ProductListModal list;
  final VoidCallback getNextPage;

  ProductResultListWidget(this.list,{this.getNextPage});

  @override
  Widget build(BuildContext context) {
    return list.data.length == 0 
      ? Center(
        child: CircularProgressIndicator(),
      ):ListView.builder(
        itemCount: list.data.length,
        itemBuilder: (BuildContext context, int i){
          ProductItemModal item = list.data[i];
          if((i + 4) == list.data.length){
            getNextPage();
          }
          return ListTile(
            title:Text(item.name),
          );
        }
        );
  }
}