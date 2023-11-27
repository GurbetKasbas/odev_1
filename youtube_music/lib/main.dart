import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity, 
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric( horizontal: 8.0),
                    child: Image.asset("assets/images/instagram_logo.png"),
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.add_circle, color: Colors.black87 ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.favorite , color: Colors.black87),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:8.0, right: 20 , top:8.0, bottom: 8.0),
                        child: Icon(Icons.send , color: Colors.black87),
                      ),
                    ],
                  ),

                ],
              ),
              ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            storyWidget("assets/images/p1.jpg", "keyvan_arasteh"),
                            storyWidget("assets/images/p5.jpeg", "alpacino"),
                            storyWidget("assets/images/p2.jpg", "ahmet_selim"),
                            storyWidget("assets/images/p4.jpeg", "johny"),
                            storyWidget("assets/images/p3.jpg", "ramazan_sen"),
                            storyWidget("assets/images/p6.jpeg", "decaptio"),
                            storyWidget("assets/images/p1.jpg", "keyvan_arasteh"),
                            storyWidget("assets/images/p5.jpeg", "alpacino"),
                            storyWidget("assets/images/p2.jpg", "ahmet_selim"),
                            storyWidget("assets/images/p4.jpeg", "johny"),
                            storyWidget("assets/images/p3.jpg", "ramazan_sen"),
                            storyWidget("assets/images/p6.jpeg", "decaptio"),
                            
                          ],
                        ),
                      ),
                      postItem("assets/images/p1.jpg","assets/images/post5.jpg","keyvan_arasteh", "Sultan Ahmet Cami" ),
                      postItem("assets/images/p2.jpg","assets/images/post3.jpg","ahmet_selim", "Üsküdar"),
                      postItem("assets/images/p3.jpg","assets/images/post2.jpg","ramazan_sen", "Kadıköy"),
                      postItem("assets/images/p4.jpeg","assets/images/post1.jpg","johny", "Beyoğlu"),
                    ],
                  ),
                ),
                
                ),
                ),
            Container( 
              width: double.infinity, 
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.home, size: 28, color: Colors.black87,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.search, size: 28, color: Colors.black87,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.smart_display, size: 32, color: Colors.black87,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.favorite, size: 28, color: Colors.black87,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.person, size: 28, color: Colors.black87,),
                  ),
                ],
              ),
              ),
          ],
        ),
      ),
    );
  }

  Container postItem(String avatar,String photo, String name , String location) => Container(
    child: Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
    
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(avatar),
                          radius: 20,
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(name,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                            Text(location,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal
                        ),
                        ),
                          ],
                        ),
                      ],
                    ),
                    const Icon(Icons.more_horiz),
                  ],
            ),
          ),
          Image.asset(photo),
          LikeCommentBox(),
          CommentBox("keyvan_aresteh","çok güzel foto olmuş hocammm.eline sağlık.Mis.kfkskfsnvfdrdhnvfkllspejsnvjpernekş ksfsbaıo jsdfıenlprsutsfkkju"),
          CommentBox("ramazan_sen", "Helal.be"),
          CommentBox("ceylan", "çok iyi olmuş hocammmm"),
        ],
      ),
    ),
  );

  Padding LikeCommentBox() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.favorite_border, color: Colors.black87,),
                SizedBox(width: 8,),
                Icon(Icons.comment_bank_outlined, color: Colors.black87,),
              ],
            ),
            Icon(Icons.flag_circle_outlined, color: Colors.black87,),
          ],
        ),
      );
  }

  Padding CommentBox(String name, String comment) {
    return Padding(
        padding: const EdgeInsets.all(3.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: RichText(
                maxLines: 3,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: name,
                      style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 12,
                ),
                    ),
                    TextSpan(text:" "),
                    TextSpan(
                  children: [
                    TextSpan(
                      text: comment,
                      style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 10,
                ),
                    ),
                  ],
                ),
                  ],
                ),
                ),
            ),
            
          ],
        ),
      );
  }

  Widget storyWidget(String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                color:Colors.green,
                                gradient: LinearGradient(colors:[
                                  Color.fromRGBO(214, 71, 103, 1),
                                  Color.fromRGBO(241, 166, 117, 1),
                                ] ),
                                shape: BoxShape.circle,
                                ),
                                
                                child: Container(
                                  padding: EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(avatar),
                                    radius: 40,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Text(
                              name ,
                              style: const TextStyle(
                                fontSize: 11
                          ),
                        ),
                      ],
                    ),
        ],
      ),
    );
  }

 
}


