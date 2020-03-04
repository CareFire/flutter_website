import 'package:flutter/material.dart';
import '../model/product.dart';
import 'product_detail_page.dart';

class HomeProductPage  extends StatelessWidget{
  final ProductListModal list;
  HomeProductPage(this.list);
  @override
  Widget build(BuildContext context){
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: deviceWidth,
      color: Colors.white,
      padding: EdgeInsets.only(top:10.0,bottom:10.0,left:7.5),
      child: _build(context,deviceWidth),
    );
  }

  Widget _build(BuildContext context,double deviceWidth){
    double itemWidth = deviceWidth * 168.5 / 360;
    double imageWidth = deviceWidth * 110.0 / 360;

    List<Widget> listWidgets = list.data.map((i){
      return GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetail(item:i)),
          );
        },
        child: Container(
        width: itemWidth,
        margin: EdgeInsets.only(bottom:5,left:2),
        padding: EdgeInsets.only(top:10,left:2,bottom:7),
        color: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              i.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 15,color: Colors.white),
            ),
            Text(
              i.desc,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 15,color: Colors.white),
            ),
            Container(
              alignment: Alignment(0,0),
              margin: EdgeInsets.only(top:5),
              child: Image.asset(
                i.imageUrl,
                width:imageWidth,
                height:imageWidth,
              ),
            ),
          ],
        ),
      ),
      );
    }).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 5, bottom:10),
          child: Text('最新产品',style: TextStyle(
            fontSize: 16.0,
            color: Color.fromRGBO(51, 51, 51, 1),
          ),),
        ),
        // 流式布局列表
        Wrap(
          spacing: 2,
          children: listWidgets
        ),
      ],
    );
  }
} 