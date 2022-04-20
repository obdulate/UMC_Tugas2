import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Products',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(primarySwatch: Colors.blue, appBarTheme: AppBarTheme(color: Colors.white)),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Products'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  void temp() {
    print('Whats New?');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title, style: TextStyle(color: Colors.blue)),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_bag_outlined, color: Colors.blue),
        ),
      ),
      body: ListView.builder(
          padding: EdgeInsets.only(top: 30.0, right: 8.0, left: 8.0),
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Card(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                color: Colors.blueGrey[50],
                child: Column(children: <Widget>[
                  ListTile(
                    leading: FittedBox(
                        fit: BoxFit.fill,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Align(
                            alignment: Alignment.center,
                            heightFactor: 0.5,
                            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfFbDNz0Gz4-a9ED4xXg0cWbHFmOBtdHvTtA&usqp=CAU", height: 50, width: 40),
                          ),
                        )),
                    title: Column(children: [
                      Text("Brand New Shoes", maxLines: 1, overflow: TextOverflow.ellipsis),
                      Text("SH-231", maxLines: 1, overflow: TextOverflow.ellipsis),
                    ]),
                    subtitle: Container(),
                    trailing: Icon(
                      Icons.delete_forever_rounded,
                    ),
                    isThreeLine: true,
                  ),
                ]),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('New Product'),
        icon: Icon(Icons.shopping_bag_rounded),
        onPressed: () => temp(),
      ),
    );
  }
}
