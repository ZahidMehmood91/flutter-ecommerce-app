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
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Container(
            child: Align(
              alignment: Alignment.topLeft,
              widthFactor: 1,
              heightFactor: 2,
              child: Image.network(
                'https://www.cnet.com/a/img/YQlXeeHCk-e--zjAOA19Cc-ISPs=/940x0/2020/10/18/bdb7ea97-cb99-48d8-a69c-38d26109f33b/05-iphone-12-pro-2020.jpg',
                fit: BoxFit.cover,
              ),
            ),
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
            Text("\n20 Pieces")
          ],
        ),
        isThreeLine: true,
      ),
    ),
  );
}
