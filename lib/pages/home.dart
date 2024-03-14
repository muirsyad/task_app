import 'package:flutter/material.dart';

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
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("My Day"),
        centerTitle: true,
        leading: const Icon(Icons.trip_origin_outlined),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.stars)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.pending))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.5),
              child: const Column(
                children: [
                  Text(
                    'Good Night, User',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "You can make magic happen",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            // Text(
            //   "You can make magic happen",
            //   style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            // ),
            Container(
              child: Column(
                children: [
                   const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Image(width: 300.0, image: AssetImage('images/semi.png')),
            ),Container(
              color: Colors.white,
              height: 80,
              child: Row(
                children: [
                  IconButton(icon: Icon(Icons.home),
                  onPressed: ()=>{},),
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: Center(
                      child: TextField(
                        
                        decoration: InputDecoration(
                          // labelText: "Iwant",
                          suffixIcon: Icon(Icons.light),
                          hintText: "I want to",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                
                                )
                                ),
                      ),
                    ),
                  ),
                ],
              ),
            )

                ],
              ),
            )
           
            
            // Padding(
            //   padding: EdgeInsets.only(
            //       bottom: MediaQuery.of(context).viewInsets.bottom),
            //   child: Row(
            //     children: [
            //       Icon(Icons.home),
            //       SizedBox(
            //         width: 200,
            //         child: TextField(),
            //       )
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
      // bottomNavigationBar: const BottomAppBar(
      //     height: 100,
      //     surfaceTintColor: Colors.white,
      //     color: Color.fromARGB(255, 255, 255, 255),
      //     child: Row(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Icon(Icons.home),
      //         SizedBox(
      //           width: 200,
      //           child: TextField(),
      //         )
      //       ],
      //     )),
    );
  }
}
