import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromRGBO(62, 36, 17, 1),
                    const Color.fromRGBO(48, 14, 32, 1),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      //Bulunan ana yönde düzenleme
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(width: 30, "assets/images/logo.png"),
                            SizedBox(width: 5),
                            Text(
                              "Music",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 27,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.podcasts,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ), //Iconlar arasına boşluk verdik
                            Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            //CircleAvatar: Yuvarlak resim yapma
                            CircleAvatar(
                              //CircleAvatar'da boyut işlemleri radius ile yapılır.
                              radius: 13,
                              backgroundImage:
                                  AssetImage("assets/images/p1.jpg"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //Kayması için
                  SingleChildScrollView(
                    //Kayma yönü
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoryItem("Energize"),
                        CategoryItem("Workout"),
                        CategoryItem("Feel good"),
                        CategoryItem("Relaxation"),
                        CategoryItem("Chill out"),
                        CategoryItem("Rock"),
                        CategoryItem("Pop"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Boş bulunan tüm alana yaymak için expanded içine aldık.
            Expanded(
              child: Container(
                width: double.infinity,
                color: const Color.fromRGBO(7, 5, 8, 1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "START RADIO FROM A SONG",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 187, 186, 186),
                            fontSize: 12,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Quick picks",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 9, vertical: 3),
                                child: Text(
                                  "Play all",
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 187, 186, 186),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        //SizedBox(height: 15,),
                        MusicRow("assets/images/cover1.jpeg", "Moments",
                            "PaulWetz & Dillistone"),
                        MusicRow("assets/images/cover2.jpeg", "Warrior",
                            "Oscar & th wolf"),
                        MusicRow("assets/images/cover3.jpeg", "Cymatics",
                            "Nigel Stanford"),
                        MusicRow("assets/images/cover4.jpeg", "Burning Sun",
                            "Monolink"),
                        MusicRow(
                            "assets/images/cover7.jpeg", "Radio Open", "Adele"),
                        MusicRow("assets/images/cover8.jpeg", "Turk Marsı",
                            "Bethoven"),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Forgotten favorites",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 9, vertical: 3),
                                child: Text(
                                  "Play all",
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 187, 186, 186),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              MusicRow2("assets/images/cover1.jpeg", "Moments",
                                  "PaulWetz & Dillistone"),
                              MusicRow2("assets/images/cover2.jpeg", "Warrior",
                                  "Oscar & th wolf"),
                              MusicRow2("assets/images/cover3.jpeg", "Cymatics",
                                  "Nigel Stanford"),
                              MusicRow2("assets/images/cover4.jpeg",
                                  "Burning Sun", "Monolink"),
                              MusicRow2("assets/images/cover7.jpeg",
                                  "Radio Open", "Adele"),
                              MusicRow2("assets/images/cover8.jpeg",
                                  "Turk Marsı", "Bethoven"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: const Color.fromRGBO(33, 33, 33, 1),
              height: 60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.play_circle,
                          color: Colors.white,
                        ),
                        Text(
                          "Samples",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.explore,
                          color: Colors.white,
                        ),
                        Text(
                          "Explore",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.subscriptions,
                          color: Colors.white,
                        ),
                        Text(
                          "Library",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.slideshow,
                          color: Colors.white,
                        ),
                        Text(
                          "Upgrade",
                          style: TextStyle(
                            color: Colors.white,
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
      ),
    );
  }

  Padding MusicRow2(String photo, String title, String artist) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            children: [
              Image.asset(
                photo,
                width: 150,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                artist,
                style: TextStyle(
                  color: const Color.fromARGB(255, 181, 181, 181),
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget MusicRow(String photo, String title, String artist) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                photo,
                width: 70,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    artist,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 181, 181, 181),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Container CategoryItem(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      margin: EdgeInsets.only(left: 3, right: 3),
      decoration: BoxDecoration(
        color: Color.fromARGB(56, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color.fromARGB(16, 255, 255, 255),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
