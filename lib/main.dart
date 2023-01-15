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
      title: 'Stundenzettel',
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
      home: const MyHomePage(title: 'Stundenzettel'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Container(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: 'Januar',
              // Wrap the ListTile in a Material widget so the ListTile has someplace
              // to draw the animated colors during the hero transition.
              child: Material(
                child: ListTile(
                  title: const Text('Januar'),
                  subtitle: const Text('klick hier um Stunden für diesen Monat einzutragen'),
                  tileColor: Colors.cyan,
                  onTap: () {Navigator.push(context,
                      MaterialPageRoute<Widget>(builder: (BuildContext context) {
                        return Scaffold(
                          appBar: AppBar(title: const Text('Januar')),
                          body: Container(
                            child: Hero(
                              tag: 'Januar',
                              child: Material(
                                child: ListTile(
                                  title: const Text('Januar'),
                                  subtitle: const Text('klick hier um zu MainPage zu gehen'),
                                  tileColor: Colors.blue[700],
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onTap: () {

    body: Container(
    child: Hero(
    tag: 'Neuer Monat',
    child: Material(
    child: ListTile(
    title: EditableText(controller: _controller, focusNode: FocusNode(), style: TextStyle(fontSize: 25, color: Colors.white), cursorColor: Colors.white, backgroundCursorColor: Colors.white),
    subtitle: const Text('klick hier um zu MainPage zu gehen'),
    tileColor: Colors.blue[700],
    onTap: () {
    Navigator.pop(context);
    },
    ),
    ),
    ),
    );
    },




        tooltip: 'neuer Monat',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
