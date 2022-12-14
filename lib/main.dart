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
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
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
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Image(
                image: NetworkImage(
                    'https://static.vecteezy.com/system/resources/previews/000/664/751/original/vector-abstract-low-poly-banner-design.jpg'),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 500,
                color: Colors.orange,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Card(
                      elevation: 20,
                      color: Colors.amber.shade500,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.abc_sharp,
                          ),
                          Text(_counter.toString())
                        ],
                      ),
                    ),
                    Text(_counter.toString(),
                        style: const TextStyle(fontSize: 50)),
                    const Text('Test'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.blue,
                          height: 150,
                          width: 100,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _counter--;
                              });
                            },
                            child: const Icon(
                              Icons.account_tree_outlined,
                              size: 80,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.green,
                          height: 150,
                          width: 100,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _counter++;
                              });
                            },
                            child: const Icon(
                              Icons.add_location,
                              size: 80,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 220,
                      padding: const EdgeInsets.all(10),
                      color: Color.fromARGB(255, 113, 45, 156),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  color: Colors.blue,
                                  height: 100,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: Colors.green,
                                  height: 100,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  color: Colors.red,
                                  height: 100,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: Colors.yellow,
                                  height: 100,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
