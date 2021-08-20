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
      title: 'HNG',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Stage 2 Task'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController inputController = TextEditingController();
  String _input = " ";
  void _updateInput() {
    setState(() {
      _input = inputController.text ?? " ";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10),
                Text("Welcome to "),
                SizedBox(height: 10),
                Image(image: AssetImage("images/hnglogo.jpg")),
                SizedBox(height: 10),
                Text("Visit"),
                //SizedBox(height: 10),
                Text(
                  "https://internship.zuri.team",
                  style: TextStyle(color: Colors.blue),
                ),
                //SizedBox(height: 10),
                Text("for more info"),
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[350],
                  child: Text(
                    '$_input',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                TextField(
                  controller: inputController,
                  decoration: InputDecoration(hintText: "Say something..."),
                ),
                ElevatedButton(
                  onPressed: _updateInput,
                  child: Text("Enter"),
                ),
              ],
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
