import 'package:flutter/material.dart';
enum RouteAnimationType{
  scale,//缩放动画
  fade,//透明度渐变动画
  rotationAndTransition,//旋转加缩放
  slide//水平方向
}
class CustomRoute extends PageRouteBuilder{
  final Widget widget;
  final RouteAnimationType animatType;
  CustomRoute(this.widget,this.animatType):super(
      transitionDuration:const Duration(milliseconds: 800),
      pageBuilder:(
        BuildContext context,
          Animation<double> ani1,
          Animation<double> ani2
      ) {
        return widget;
      },
      transitionsBuilder:(
        BuildContext context,
          Animation<double> ani1,
          Animation<double> ani2,
          Widget child){
        if (animatType == RouteAnimationType.scale){
          return ScaleTransition(
              scale: Tween(begin: 0.0,end: 1.0).animate(
                  CurvedAnimation(
                      parent: ani1,
                      curve: Curves.fastOutSlowIn
                  )
              ),
              child:child
          );
        }
        if (animatType == RouteAnimationType.fade){
          return FadeTransition(
            opacity: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: ani1, curve: Curves.fastOutSlowIn)),
            child: child,
          );
        }
        if (animatType == RouteAnimationType.rotationAndTransition){
          return RotationTransition(
            turns: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: ani1, curve: Curves.fastOutSlowIn)),
            child: ScaleTransition(
              scale: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: ani1, curve: Curves.fastOutSlowIn)),
              child: child,
            ),
          );
        }
        if (animatType == RouteAnimationType.slide){
          return SlideTransition(
            position: Tween(begin: Offset(1.0, 0.0),end: Offset(0.0, 0.0)).animate(CurvedAnimation(parent: ani1, curve: Curves.fastOutSlowIn)),
            child: child,
          );
        }
      },
    );





}