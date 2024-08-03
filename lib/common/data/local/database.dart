import 'package:hive/hive.dart';

class FurnitureDatabase {
  List<String> furniture = [
    // [Map()]
  ];
  List<String> users = [];

  // reference our box
  final _myBox = Hive.box('furniture_box');

  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    furniture = [
      'Lamp',
      'Bed'
    ];
  }

  var box = Hive.box('myBox');



  // load the data from database
  void loadData() {
    box.put('name', 'David');

    var name = _myBox.get('name');

    print('Name: $name');
    furniture = _myBox.get('Furniture');
  }
}
