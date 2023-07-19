import 'package:flutter/material.dart';
import 'pageone.dart';

class PageIntroduction extends StatelessWidget {
  const PageIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("example fetch data from interent",
        style: TextStyle(color:Colors.white),),
        backgroundColor: Colors.pink,
        leading: const Icon(Icons.comment,color:Colors.white),
       
      ),
      body:  Container(
        color: Colors.pink.shade100,
        padding: const EdgeInsets.all(21),
        child: Column(children: [
          const Text("clock the following button to show all comments from https://jsonplaceholder.typicode.com/comments ",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            decoration: TextDecoration.underline,
            decorationColor: Colors.yellow,
            
          ),),
        TextButton(
          onPressed: ()
        {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=>const PageOne())
        );
        },
         child: const Text("All Comments",
         style:TextStyle(
          fontSize: 24,
          color: Colors.red,
         )))
        ],),
      ),
      
    );
  }
}