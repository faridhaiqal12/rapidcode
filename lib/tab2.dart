import 'package:flutter/material.dart';

class Tab2 extends StatelessWidget {
  const Tab2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Image(image: AssetImage("assets/images/icon1.png")),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Tab2()));
              },
              icon: Image(image: AssetImage("assets/images/icon2.png")),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: Colors.grey.shade400,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  color: Colors.grey.shade400,
                ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/food.png",
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                    
              ),
            )
          ],
        ),
      ),
    );
  }
}
