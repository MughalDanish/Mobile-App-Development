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
        primarySwatch: Colors.blue,

      ),
      home: const MyHomePage(title: 'Practice',),
    );
  }
}
//__________________________________First Task____________________________________

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () { },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        flexibleSpace: SafeArea(
          child: Icon(
            Icons.photo_camera,
            size: 75.0,
            color: Colors.white70,
          ),
        ),
        bottom: PreferredSize(
          child: Container(
            color: Colors.lightBlue,
            height: 75.0,
            width: double.infinity,
            child: Center(
              child: Text('Bottom'),
            ),
          ),
          preferredSize: Size.fromHeight(75.0),
        ),

      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[Container( height: 100.0,

                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white,
                        Colors.blue,
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100.0),
                      bottomRight: Radius.circular(10.0),

                    )

                ),

                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Flutter World',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.deepPurpleAccent,
                        decorationStyle: TextDecorationStyle.dotted,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.normal,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' for',
                        ),
                        TextSpan(
                          text: ' Mobile',
                          style: TextStyle(
                              color: Colors.deepOrange,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text('Column 1'),
                  Divider(),
                  Text('Column 2'),
                  Divider(),
                  Text('Column 3'),
                ],
              ),Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text('Row 1'),
                      Padding(padding: EdgeInsets.all(16.0),),
                      Text('Row 2'),
                      Padding(padding: EdgeInsets.all(16.0),),
                      Text('Row 3'),
                    ],
                  ),
                ],
              ),


              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.play_arrow),
        backgroundColor: Colors.lightBlue,
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.pause),
            Icon(Icons.stop),
            Icon(Icons.access_time),
            Padding(
              padding: EdgeInsets.all(32.0),
            ),
          ],
        ),
      ),
    );
  }
}

class Order {
  String item="";
  int quantity=0;
}
//_________________________________Second Task__________________________________

class MySecondHomePage extends StatefulWidget{
  @override
  State<MySecondHomePage> createState() => _MySecondHomePage();

}


class _MySecondHomePage extends State<MySecondHomePage>
{
  Order _order = Order();
  String _validateItemRequired(String value) {
    return value.isEmpty ? 'Items Required' : "";
  }
  String _validateItemCount(String value) {
    int _valueAsInteger = value as int;
    return _valueAsInteger == 0 ? 'At least one Item Required' : "null";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Image"),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    Icon(
                      Icons.brush,
                      color: Colors.lightBlue,
                      size: 48.0,
                    ),
                  ],
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.
                    circular(20.0)),
                    color: Colors.orange,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10.0,
                        offset: Offset(0.0, 10.0),
                      )
                    ],
                  ),
                ),
                TextField( keyboardType: TextInputType.text,
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 16.0,
                  ),
                  decoration: InputDecoration(
                    labelText: "Notes",
                    labelStyle: TextStyle(color: Colors.purple),
                    //border: UnderlineInputBorder(),
                    border: OutlineInputBorder(),

                  ),
                ),
// TextFormField
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter your notes',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }

}
//____________________________________Third Task_____________________________________
class OrientationLayoutIconsWidget extends StatelessWidget {
  const OrientationLayoutIconsWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Orientation _orientation = MediaQuery.of(context).orientation;
    return _orientation == Orientation.portrait
        ? Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.school,
          size: 48.0,
        ),
      ],
    )
        : Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.school,
          size: 48.0,
        ),
        Icon(
          Icons.brush,
          size: 48.0,
        ),
      ],
    );
  }
}

class MyThirdHomePage extends StatefulWidget{
  @override
  State<MyThirdHomePage> createState() => _MyThirdHomePage();

}
class _MyThirdHomePage extends State<MyThirdHomePage>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Orientation"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () { },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                const OrientationLayoutIconsWidget()
              ],
            ),
          ),
        ),
      ),);
  }

}