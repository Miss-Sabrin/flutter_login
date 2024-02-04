class ChatMessageEnttity{
     String text;
     String? imageUrl;
       String id;
      int createdAt;
       final author;


      ChatMessageEnttity(
         { required this.text, 
         required this.id,
         this.imageUrl,
          required this.createdAt,
          required this.author});

      factory ChatMessageEnttity.fromJson(Map<String,dynamic> json){
        return ChatMessageEnttity(
          text: json['text'],
          id: json['id'],
          imageUrl: json['image'],
          
            createdAt: json['createdAt'],
            
          author: Author.fromJson( json ['author']));
           
           

             //author: json['sabrinaa']);
           //  author: json['author']);

      }




}  


class Author{
   final userName;

  Author({required this.userName});


  factory Author.fromJson(Map<String,dynamic> json){
    return Author(userName: json['sabnaa']);
  }
}