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
                login(),
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
          backgroundColor: Colors.white,
          backgroundImage: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png'),
        ),
        title: Text(
          'User',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              Text('abc@gmail.com'),
              Text(
                "\nlogout",
                style: TextStyle(color: Colors.purple),
              )
            ],
          ),
        ),
        isThreeLine: true,
      ),
    ),
  );
}

Widget login() {
  return Container(
    padding: EdgeInsets.only(left: 10),
    child: Align(
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          Text(
            'ACCOUNT INFORMATION',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Full Name',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )),
          TextField(
            decoration:
                InputDecoration(hintText: 'User', border: InputBorder.none),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Email',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )),
          TextField(
            decoration: InputDecoration(
                hintText: 'user@gmail.com', border: InputBorder.none),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Phone',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )),
          TextField(
            decoration: InputDecoration(
                hintText: '+0900-786 01', border: InputBorder.none),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Address',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )),
          TextField(
            decoration: InputDecoration(
                hintText: 'New York, Random Street House NO. 72',
                border: InputBorder.none),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Gender',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )),
          TextField(
            decoration:
                InputDecoration(hintText: 'Male', border: InputBorder.none),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Date of Birth',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )),
          TextField(
            decoration: InputDecoration(
                hintText: 'October 13, 1999', border: InputBorder.none),
          )
        ],
      ),
    ),
  );
}
