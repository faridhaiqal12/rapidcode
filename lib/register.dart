import 'package:flutter/material.dart';
import 'package:rapidcode2/home.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            ListTile(
              title: Text(
                "Register",
                style: TextStyle(fontFamily: 'poppins', fontSize: 18),
              ),
              leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back_ios_new)),
            ),
            SizedBox(
              height: 110,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/amico.png",
                    scale: 2,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Text(
                      "Email",
                      style: TextStyle(fontFamily: 'poppins', fontSize: 12),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: TextField(
                          enableSuggestions: false,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Text(
                      "Password",
                      style: TextStyle(fontFamily: 'poppins', fontSize: 12),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: TextField(
                          enableSuggestions: false,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Text(
                      "Repeat Password",
                      style: TextStyle(fontFamily: 'poppins', fontSize: 12),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: TextField(
                          decoration: InputDecoration(
                            
                          ),
                          // enableSuggestions: false,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {}, child: Text("Forgot Password?"))
                    ],
                  ),
                ),
                Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.all(10)),
                            Container(
                              width: 420,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(51, 44, 69, 30),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(9))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Register",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'poppins'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Dont have Account? ",
                              style:
                                  TextStyle(fontFamily: 'poppins', fontSize: 9),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(MaterialPageRoute(
                                    builder: (context) => Home(),
                                  ));
                                },
                                child: Text(
                                  "Sign-Up",
                                  style: TextStyle(
                                      fontFamily: 'poppings', fontSize: 11),
                                )),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
