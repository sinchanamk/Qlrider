import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class ScalePageRoute extends PageRouteBuilder
{
  final Widget widget;
ScalePageRoute({required this.widget}):super(transitionDuration: Duration(seconds: 1),
 transitionsBuilder: (BuildContext context,Animation<double> animation,
                     Animation<double> secAnimation,Widget child){
                       return ScaleTransition(scale: animation,child: child,);
                     },
                      pageBuilder: (BuildContext context, Animation<double> animation,
                       Animation<double> secondaryAnimation) { 
                         return widget;
                        },
                     
                      ); 
  
}