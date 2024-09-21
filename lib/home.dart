import 'package:flutter/material.dart';
import 'package:rapidcode2/branda.dart';
import 'package:rapidcode2/register.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
                "Welcome Back",
                style: TextStyle(fontSize: 20, fontFamily: 'poppins'),
              ),
              subtitle: Text(
                "Login to continue your journey",
                style: TextStyle(fontFamily: 'poppins', color: Colors.black45),
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset("assets/images/amico.png"),
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
                          decoration: InputDecoration(),
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
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Branda(),
                          ));
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
                                    "Login",
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
                    // Container(
                    //   height: 50,
                    //   width: 200,
                    //   decoration: BoxDecoration(
                    //       color: Color.fromRGBO(51, 44, 69, 20),
                    //       borderRadius: BorderRadius.all(Radius.circular(10))),
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Text(
                    //         "Login",
                    //         textAlign: TextAlign.center,
                    //         style: TextStyle(
                    //             fontFamily: 'poopins', color: Colors.white),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    SizedBox(
                      height: 10,
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
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Register(),
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
