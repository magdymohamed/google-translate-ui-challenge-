import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

List Hour = [
  'Text',
  "Voice",
  "Camera",
  "HandWritting",
];

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<Icon> Iconss = [
      Icon(
        Icons.text_fields,
        size: MediaQuery.of(context).size.width / 5,
        color: Colors.blueGrey,

      ),
      Icon(
        Icons.audiotrack,
        size: MediaQuery.of(context).size.width / 5,
        color: Colors.blueGrey,

      ),
      Icon(
        Icons.camera_alt,
        size: MediaQuery.of(context).size.width / 5,
        color: Colors.blueGrey,
      ),
      Icon(
        Icons.text_fields,
        size: MediaQuery.of(context).size.width / 5,
        color: Colors.blueGrey,

      ),

    ];

    return Scaffold(
        body: Column(
      children: [
        Expanded(
            child: Stack(
          children: [
            Container(
              color: Colors.white,
            ),
            Container(
              width: MediaQuery.of(context).size.width-80,
              margin: EdgeInsets.only(right: 80),
              padding: EdgeInsets.only(left: 40),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(80)),
                color: Colors.blueAccent,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:150,
                        ),
                    child: Text(
                     " Hello, Paula ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:25,right: 50
                    ),
                    child: Text(
                      "what can i translate for you today? ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 38),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 40,
              right: 40,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset("lib/assets/user2.jpg")),
              ),
            ),
            Positioned(
              top: 60,
              left: 40,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
                ),
                child: Icon(Icons.filter_list,color: Colors.black,),
              ),
            ),
          ],
        )),
        Expanded(
            child: Stack(
          children: [
            Container(
              color: Colors.blueAccent,
            ),
            Container(
              margin: EdgeInsets.only(right: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(80)),
                color: Colors.white,
              ),
              child: Container(
                padding: EdgeInsets.only(top: 80,right: 0),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Hour.length,
                    padding: EdgeInsets.only(right: 30),
                    itemBuilder: (context, int index) {
                      return Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2.9,
                            height: MediaQuery.of(context).size.width / 2.9,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45),
                              border: Border.all(
                                color: Colors.grey.shade300,
                                width: 2

                              ),
                              color: Colors.white.withOpacity(0.5),
                            ),
                            margin: EdgeInsets.only(left:24.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Iconss[index],
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 20),
                                  child: Text(
                                    Hour[index].toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2.9,
                            height: MediaQuery.of(context).size.width / 2.9,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45),
                              border: Border.all(
                                  color: Colors.grey.shade300,
                                  width: 2

                              ),
                              color: Colors.white.withOpacity(0.5),
                            ),
                            margin: EdgeInsets.only(left:24.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Iconss[index],
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 20),
                                  child: Text(
                                    Hour[index].toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      );
                    }),
              ),
            )
          ],
        )),
      ],
    ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
