import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  String img1 =
      "https://i.pinimg.com/564x/99/a9/d8/99a9d8001612bb6d3d5cfae6937438aa.jpg";
  String img2 =
      'https://i.pinimg.com/564x/8a/8c/69/8a8c693759a1a91ff555053a5e9ec21d.jpg';
  String img = "s.jpg";

  void _increment() {
    setState(() {
      count++;
    });
  }

  void _change() {
    setState(() {
      if (img == img1) {
        img = img2;
      } else {
        img = img1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainbar(),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.black),
            height: 220,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "you have pressed this button " +
                      count.toString() +
                      " times!",
                  style: TextStyle(color: Colors.white),
                ),
                Container(
                  height: 100,
                  width: 230,
                  child: Image.network(img),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    onPressed: () {
                      _increment();
                    },
                    child: Text("inc")),
              ),
              Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.bottomRight,
                  child:
                      ElevatedButton(onPressed: _change, child: Text("pic"))),
            ],
          )
        ],
      ),
    );
  }

  AppBar mainbar() {
    return AppBar(
      title: Text('CW01'),
      centerTitle: true,
    );
  }
}
