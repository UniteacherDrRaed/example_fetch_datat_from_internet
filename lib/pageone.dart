import 'package:flutter/material.dart';

import 'comment.dart';
import 'getcomments.dart';

List<Comment> lc=[];
class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("example fetch data from interent",
        style: TextStyle(color:Colors.white),),
        backgroundColor: Colors.pink,
        leading: const Icon(Icons.comment,color:Colors.white),
       
      ),
      body: Container(
        color: Colors.pink.shade100,
        child: FutureBuilder(
          future: fetchComments(),
          builder: ((context, snapshot) {
          
           return ListView.builder(
              
              itemCount:(snapshot.data==null) ?0: snapshot.data!.length,
              itemBuilder: ((context, index) {
                return
                Padding(padding: const EdgeInsets.all(21),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                 
                    Text(snapshot.data![index].id.toString(), 
                    style:const TextStyle(backgroundColor: Colors.green)),
                    Text(snapshot.data![index].name,
                    style: const TextStyle(color: Colors.yellow),
                    )
                  ,
                  Text(snapshot.data![index].email),
                   Text(snapshot.data![index].body,
                    style: const TextStyle(color:Colors.white),
                    ) 
                    ,
                   
                ],
                ),
                );
              }),
              
            );
          }),
        ),
    ),
    floatingActionButton: FloatingActionButton(
      child: const Icon(Icons.arrow_back,color: Colors.blue,),
      mini: true,
      elevation:10.0,
      onPressed: (){
        Navigator.of(context).pop();
      }
      
      ),
    );
  }
}