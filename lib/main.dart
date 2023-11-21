import 'package:flutter/material.dart';
import 'package:login_page/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://www.bhmpics.com/downloads/pictures-of-pink-backgrounds-/31.abstract-of-pink-living-coral-color-sky-background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 200,
            child: Container(
              height: 500,
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "REGISTER",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 2,
                    width: 55,
                    color: Colors.orange,
                  ),
                  SizedBox(height: 20), // Adjust the spacing as needed
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(35.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(35.0)),
                        ),
                        contentPadding: EdgeInsets.all(10),
                        hintText: "User name",
                        hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.mail,
                          color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(35.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(35.0)),
                        ),
                        contentPadding: EdgeInsets.all(10),
                        hintText: "E-mail",
                        hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(35.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(35.0)),
                        ),
                        contentPadding: EdgeInsets.all(10),
                        hintText: "Password",
                        hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(35.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(35.0)),
                        ),
                        contentPadding: EdgeInsets.all(10),
                        hintText: "Confirm Password",
                        hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
                      ),
                    ),

                  ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Row(children: [
                        Container(
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(15)),
                        child: Icon(
                          Icons.man_2_outlined,
                          color: Colors.grey,
                        ),
                            ),
                        Text("Male",
                        style: TextStyle(color: Colors.grey),)


                      ],),
                      SizedBox(width: 30,),
                      Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(15)),
                            child: Icon(
                              Icons.man_2_outlined,
                              color: Colors.grey,
                            ),
                          ),
                          Text("Female",
                            style: TextStyle(color: Colors.grey),)

                        ],),
                    ],
                ),),
                  GestureDetector(
                    onTap:(){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login()));
                    } ,
                    child: Container(
                      width: 300,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.lime),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          "REGISTER NOW",
                          style: TextStyle(color: Colors.lime,fontSize: 20),
                        ),
                      ),
                    ),
                  )

                ]
              ),
            ),
          )
        ],
      ),
    );
  }
}