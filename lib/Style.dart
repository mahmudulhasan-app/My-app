import 'package:flutter/material.dart';

InputDecoration AppinputDecoration(label){
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(15, 25, 25, 15),
    border: OutlineInputBorder(),
    labelText: label,
  );
}
ButtonStyle Appbutton(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(16),
backgroundColor: Colors.green,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5))

  )
  );
}
SizedBox Sizebox50(child){
  return SizedBox(
    height: 60,
    width: double.infinity,
child: Container(
  alignment: Alignment.center,
  padding: EdgeInsets.all(8),
child: child,
),
  );

}