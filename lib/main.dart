import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/Todo.dart';

main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "To Do",
home: Todopage(),
    theme: ThemeData(primarySwatch: Colors.blue),
  );
  }




}