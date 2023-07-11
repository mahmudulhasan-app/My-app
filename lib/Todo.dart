import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Style.dart';

class Todopage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Todopageview();
  }
}
class Todopageview extends State<Todopage>{
  List TodoList=[];
  var item='';

  MyInputChange(content){

    setState(() {
      item=content;
    });
  }
  Additem(){
    setState((){
      TodoList.add({'item':item});
    });
  }
  RemoveItem(index){
    setState((){
      TodoList.removeAt(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ToDo App"),),
      body: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            Expanded(
                flex: 10,
                child: Row(
                  children: [

                    Expanded(flex: 70,child: TextField(onChanged: (content){MyInputChange(content);},decoration: AppinputDecoration("Items"))),
                    Expanded(flex: 20, child:Padding(padding: EdgeInsets.only(left: 5),child: ElevatedButton(onPressed: (){Additem();},child: Text("Add"),style: Appbutton(),))),
                  ],//fix this problem
                )
            ),
            Expanded(
                flex: 90,
                child: ListView.builder(
                    itemCount: TodoList.length,
                    itemBuilder: (context,index){
                      return Card(
                        child: Row(
                          children: [

                            Expanded(flex: 90,child: Text(TodoList[index]['ITEMS'].toString()),),
                            Expanded(flex: 17, child: ElevatedButton(onPressed: (){RemoveItem(index);},child: Icon(Icons.delete),),),
                          ],
                        ),
                      );
                    }
                )
            )
          ],
        ),
      ),
    );
  }
}