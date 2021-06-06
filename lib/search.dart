import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Center(
              child: Text(
                "Ecom App UI",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            actions: [
              IconButton(
                  icon: const Icon(Icons.notifications),
                  color: Colors.black,
                  onPressed: () {})
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Username',
                      suffixIcon: Icon(Icons.search)),
                ),
                products(),
                products(),
                products(),
                products(),
                products(),
              ],
            ),
          ),
        ));
  }
}

Widget products() {
  return Card(
    child: Container(
      height: 100,
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_eVt2JShypIShKK1T9kQ80ucs08VIvalfFA&usqp=CAU',
          ),
        ),
        title: Text(
          'Iphone 12',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            Text('5.0 (23 Rewievs)'),
          ],
        ),
        trailing: Text("10"),
      ),
    ),
  );
}
