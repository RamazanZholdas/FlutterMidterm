import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _someText = "0";
  void changeValue(String str) {
    setState(() {
      if (str == "+/-") {
          _someText = "-" + _someText;
      }
      else if (str == "") {
        _someText = "0";
      }
      else if (_someText == "0"){
        _someText = str;
      }else {
        _someText += str;
      }
    });
  }

  void calculate() {

    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10, bottom: 15),
            child: SizedBox(
              child: Align(
                alignment: Alignment.bottomRight,
                  child: Text(_someText,
                    style: const TextStyle(color: Colors.white, fontSize: 64),
                  ),
              ),
              width: double.infinity,
              height: 150,
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/7,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            side: const BorderSide(
                                color: Colors.black,
                                width: 1,
                                style: BorderStyle.solid
                            )
                        ),
                        padding: const EdgeInsets.all(16.0),
                        onPressed: () {
                          changeValue("");
                        },
                        child: const Text(
                          "C",
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        )
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/7,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            side: const BorderSide(
                                color: Colors.black,
                                width: 1,
                                style: BorderStyle.solid
                            )
                        ),
                        padding: const EdgeInsets.all(16.0),
                        onPressed: () {
                          changeValue("+/-");
                        },
                        child: const Text(
                          "+/-",
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        )
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/7,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            side: const BorderSide(
                                color: Colors.black,
                                width: 1,
                                style: BorderStyle.solid
                            )
                        ),
                        padding: const EdgeInsets.all(16.0),
                        onPressed: () {
                          changeValue("%");
                        },
                        child: const Text(
                          "%",
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/7,
                    decoration: BoxDecoration(
                      color: Colors.orange[400],
                    ),
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            side: const BorderSide(
                                color: Colors.black,
                                width: 1,
                                style: BorderStyle.solid
                            )
                        ),
                        padding: const EdgeInsets.all(16.0),
                        onPressed: () {
                          changeValue("/");
                        },
                        child: const Text(
                          "/",
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        )
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/7,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: const BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid
                          )
                      ),
                      padding: const EdgeInsets.all(16.0),
                      onPressed: () {
                        changeValue("7");
                      },
                      child: const Text(
                        "7",
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/7,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: const BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid
                          )
                      ),
                      padding: const EdgeInsets.all(16.0),
                      onPressed: () {
                        changeValue("8");
                      },
                      child: const Text(
                        "8",
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/7,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: const BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid
                          )
                      ),
                      padding: const EdgeInsets.all(16.0),
                      onPressed: () {
                        changeValue("9");
                      },
                      child: const Text(
                        "9",
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/7,
                    decoration: BoxDecoration(
                      color: Colors.orange[400],
                    ),
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            side: const BorderSide(
                                color: Colors.black,
                                width: 1,
                                style: BorderStyle.solid
                            )
                        ),
                        padding: const EdgeInsets.all(16.0),
                        onPressed: () {
                          changeValue("*");
                        },
                        child: const Text(
                          "*",
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        )
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/7,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: const BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid
                          )
                      ),
                      padding: const EdgeInsets.all(16.0),
                      onPressed: () {
                        changeValue("4");
                      },
                      child: const Text(
                        "4",
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/7,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: const BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid
                          )
                      ),
                      padding: const EdgeInsets.all(16.0),
                      onPressed: () {
                        changeValue("5");
                      },
                      child: const Text(
                        "5",
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/7,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: const BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid
                          )
                      ),
                      padding: const EdgeInsets.all(16.0),
                      onPressed: () {
                        changeValue("6");
                      },
                      child: const Text(
                        "6",
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/7,
                    decoration: BoxDecoration(
                      color: Colors.orange[400],
                    ),
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            side: const BorderSide(
                                color: Colors.black,
                                width: 1,
                                style: BorderStyle.solid
                            )
                        ),
                        padding: const EdgeInsets.all(16.0),
                        onPressed: () {
                          changeValue("-");
                        },
                        child: const Text(
                          "-",
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        )
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/7,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: const BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid
                          )
                      ),
                      padding: const EdgeInsets.all(16.0),
                      onPressed: () {
                        changeValue("1");
                      },
                      child: const Text(
                        "1",
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/7,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: const BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid
                          )
                      ),
                      padding: const EdgeInsets.all(16.0),
                      onPressed: () {
                        changeValue("2");
                      },
                      child: const Text(
                        "2",
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/7,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: const BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid
                          )
                      ),
                      padding: const EdgeInsets.all(16.0),
                      onPressed: () {
                        changeValue("3");
                      },
                      child: const Text(
                        "3",
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/7,
                    decoration: BoxDecoration(
                      color: Colors.orange[400],
                    ),
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            side: const BorderSide(
                                color: Colors.black,
                                width: 1,
                                style: BorderStyle.solid
                            )
                        ),
                        padding: const EdgeInsets.all(16.0),
                        onPressed: () {
                          changeValue("+");
                        },
                        child: const Text(
                          "+",
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        )
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/4 * 2,
                    height: MediaQuery.of(context).size.height/7,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: const BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid
                          )
                      ),
                      padding: const EdgeInsets.all(16.0),
                      onPressed: () {
                        changeValue("0");
                      },
                      child: const Text(
                        "0",
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/7,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: const BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid
                          )
                      ),
                      padding: const EdgeInsets.all(16.0),
                      onPressed: () {
                        changeValue(".");
                      },
                      child: const Text(
                        ".",
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/7,
                    decoration: BoxDecoration(
                      color: Colors.orange[400],
                    ),
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            side: const BorderSide(
                                color: Colors.black,
                                width: 1,
                                style: BorderStyle.solid
                            )
                        ),
                        padding: const EdgeInsets.all(16.0),
                        onPressed: () {
                          calculate();
                        },
                        child: const Text(
                          "=",
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        )
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}


