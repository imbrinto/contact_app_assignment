import 'package:flutter/material.dart';

void deleteAlertdialogBox(BuildContext context, Function(int index) deleteContact, int index){
  showDialog(context: context, builder: (context){
    return AlertDialog(
      title: const Text('Confirmation'),
      content: const Text('Are you sure for Delete?'),
      actions: [
        IconButton(onPressed: (){
          deleteContact(index);
          Navigator.pop(context);
        }, icon: const Icon(Icons.delete,color: Colors.cyanAccent,),),
        IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.cancel,color: Colors.cyanAccent,),),
      ],
    );
  });
}