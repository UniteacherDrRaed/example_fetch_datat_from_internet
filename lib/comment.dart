class Comment{
  final int id;
  final String name;
  final String email;
  final String body;
 const  Comment({
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });
  factory Comment.fromJsonformat(Map<String, dynamic> jsonforma)
  =>
  Comment(id: jsonforma['id'],
  name: jsonforma['name'], 
  email: jsonforma['email'],
   body: jsonforma['body']);
}