import 'package:flutter/material.dart';
import 'package:rapidcode2/tab2.dart';

class Branda extends StatefulWidget {
  const Branda({super.key});

  @override
  State<Branda> createState() => _BrandaState();
}

class _BrandaState extends State<Branda> {
  @override
  Widget build(BuildContext context) {
    DefaultTabController(length: 4, child: Scaffold());
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
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
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: ListTile(
                  title: Text(
                    "Hi, Brodie",
                    style: TextStyle(
                        fontFamily: 'poppins', fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text("Bukit Rata, Lhokseumawe"),
                  trailing: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/pp.png"),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 200,
                    // width: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/image 4.png"))),
                    // child: Image(image: AssetImage("assets/images/image4.png"))))
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
