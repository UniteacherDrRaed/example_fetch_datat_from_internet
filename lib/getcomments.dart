import 'dart:convert';

import 'comment.dart';
import 'package:http/http.dart' as http;
Future<List<Comment>> fetchComments() async{
  List<Comment> lc=[];
  final responseComment=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));
  if (responseComment.statusCode==200)
  {
    var allComments=json.decode(responseComment.body);
    for (var c in allComments)
    {
      Comment cm=Comment.fromJsonformat(c);
      lc.add(cm);

    }
    
  }
  return lc;
}