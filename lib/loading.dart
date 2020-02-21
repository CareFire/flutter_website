import 'package:flutter/material.dart';
// import 'dart:async';

class LoadingPage extends StatefulWidget{
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<LoadingPage>{
  @override
  void initState(){
    super.initState();
    //在加载页面停顿3秒
    Future.delayed(Duration(seconds: 8),(){
      print('企业站启动');
      Navigator.of(context).pushReplacementNamed("app");
    });
  }

  @override
  Widget build(BuildContext context){
    return Center(
      child: Center(
        child: Stack(
          children: <Widget>[
            // 背景图
            Image.asset(
              'assets/images/loading.jpg'
            ),
            Center(
              child: Text(
                'Flutter 企业站',
                style: TextStyle(
                  color: Colors.white,
                   fontSize: 36.0,
                   decoration: TextDecoration.none
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}