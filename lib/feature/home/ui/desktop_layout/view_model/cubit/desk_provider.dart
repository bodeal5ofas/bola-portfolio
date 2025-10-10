import 'package:flutter/material.dart';

class DeskProvider with ChangeNotifier{
final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final skillsKey = GlobalKey();
  final serviceKey = GlobalKey();
final projectsKey = GlobalKey();
final contactKey = GlobalKey();

PageController service_controller = PageController();
PageController projects_controller = PageController();
     int _currentIndex=0;

  int get currentIndex => _currentIndex;

   setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}