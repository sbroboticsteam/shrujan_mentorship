import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

String user_input = '';
String opp = '';
int num1 = 0;
int num2 = 0;
int result = 0;

class _MyHomeState extends State<MyHome> {
  void add1() async {
    setState(() {
      user_input = user_input + '1';
    });
  }

  void add2() {
    setState(() {
      user_input = user_input + '2';
    });
  }

  void add3() {
    setState(() {
      user_input = user_input + '3';
    });
  }

  void add4() {
    setState(() {
      user_input = user_input + '4';
    });
  }

  void add5() {
    setState(() {
      user_input = user_input + '5';
    });
  }

  void add6() {
    setState(() {
      user_input = user_input + '6';
    });
  }

  void add7() {
    setState(() {
      user_input = user_input + '7';
    });
  }

  void add8() {
    setState(() {
      user_input = user_input + '8';
    });
  }

  void add9() {
    setState(() {
      user_input = user_input + '9';
    });
  }

  void add0() {
    setState(() {
      user_input = user_input + '0';
    });
  }

  void addplus() {
    opp = '+';
    setState(() {
      user_input = '';
    });
  }

  void addminus() {
    opp = '-';
    setState(() {
      user_input = '';
    });
  }

  void addmul() {
    opp = '*';
    setState(() {
      user_input = '';
    });
  }

  void adddiv() {
    opp = '/';
    setState(() {
      user_input = '';
    });
  }

  void opper() {
    if (opp == '+') {
      num1 = int.parse(user_input);
    } else if (opp == '-') {
      num1 = int.parse(user_input);
    } else if (opp == '/') {
      num1 = int.parse(user_input);
    } else if (opp == '*') {
      num1 = int.parse(user_input);
    } else if (opp == '=') {
      setState(() {
        if (opp == '+') {
          result = num1 + num2;
          user_input = result.toString();
        }
        if (opp == '-') {
          result = num1 - num2;
          user_input = result.toString();
        }
        if (opp == '*') {
          result = num1 * num2;
          user_input = result.toString();
        }
        if (opp == '/') {
          double res1 = num1 / num2;
          result = res1.round();
          user_input = result.toString();
        }
      });
      num2 = int.parse(user_input);
    } else
      () {
        print('error');
      };
  }

  void addeq() {
    opp = '=';
    opper();

    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            Text(user_input),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: (() {
                          add1();
                        }),
                        child: Text('1')),
                    TextButton(
                        onPressed: (() {
                          add2();
                        }),
                        child: Text('2')),
                    TextButton(
                        onPressed: (() {
                          add3();
                        }),
                        child: Text('3')),
                    TextButton(
                        onPressed: (() {
                          add4();
                        }),
                        child: Text('4')),
                    TextButton(
                        onPressed: (() {
                          addplus();
                        }),
                        child: Text('+')),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: (() {
                          add5();
                        }),
                        child: Text('5')),
                    TextButton(
                        onPressed: (() {
                          add6();
                        }),
                        child: Text('6')),
                    TextButton(
                        onPressed: (() {
                          add7();
                        }),
                        child: Text('7')),
                    TextButton(
                        onPressed: (() {
                          add8();
                        }),
                        child: Text('8')),
                    TextButton(
                        onPressed: (() {
                          addminus();
                        }),
                        child: Text('-')),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: (() {
                          add9();
                        }),
                        child: Text('9')),
                    TextButton(
                        onPressed: (() {
                          add0();
                        }),
                        child: Text('0')),
                    TextButton(
                        onPressed: (() {
                          addmul();
                        }),
                        child: Text('*')),
                    TextButton(
                        onPressed: (() {
                          adddiv();
                        }),
                        child: Text('/')),
                    TextButton(
                        onPressed: (() {
                          addeq();
                        }),
                        child: Text('=')),
                  ],
                )
              ],
            )
          ])),
    );
  }
}
