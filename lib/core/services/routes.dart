import 'package:education_app_tdd/core/common/views/page_under_construction.dart';
import 'package:flutter/material.dart';

Route<dynamic> generatedRoutes(RouteSettings settings){
    switch(settings.name){
      // case OnboadringScreen.routeName:
      //  return _pageBuilder((context) => const OnboadringScreen(),
      //   settings: settings,);
      default:
        return _pageBuilder((context) => const PageUnderConstruction(),
        settings: settings,);
    }



}



PageRouteBuilder<dynamic>  _pageBuilder(
  Widget Function(BuildContext context) page,
  {required RouteSettings settings}
) {
  return PageRouteBuilder(
    transitionsBuilder: (_,animation,__,child){
      return FadeTransition(opacity: animation, child: child);
    },
    pageBuilder: (context,_,__)=>page(context));
}