import 'package:final_project/authservice.dart';
import 'package:flutter/material.dart';
import 'package:final_project/routs.dart';
import 'globals.dart' as globals;

class HomePage extends StatelessWidget {
  var c = globals.curr;
  var ono = globals.oning;
  var out = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 40,
          title: Text("Sensor"),
        ),
        // body: GridView.count(
        //   primary: false,
        //   padding: const EdgeInsets.all(20),
        //   crossAxisSpacing: 10,
        //   mainAxisSpacing: 10,
        //   crossAxisCount: 3,
        //   children: <Widget>[
        //     Container(
        //       padding: const EdgeInsets.all(8),
        //       child: InkWell(
        //         onTap: () {
        //           Navigator.pushNamed(context, MyRoutes.homepageRoute);
        //         },
        //         child: Container(
        //           child: ClipRRect(
        //             child: Image.asset(
        //               "assets/images/login_img.png",
        //               fit: BoxFit.cover,
        //             ),
        //           ),
        //         ),
        //       ),
        //       color: Colors.teal[100],
        //     ),
        //     Container(
        //       padding: const EdgeInsets.all(8),
        //       child: const Text('Heed not the rabble'),
        //       color: Colors.teal[200],
        //     ),
        //     Container(
        //       padding: const EdgeInsets.all(8),
        //       child: const Text('Sound of screams but the'),
        //       color: Colors.teal[300],
        //     ),
        //     Container(
        //       padding: const EdgeInsets.all(8),
        //       child: const Text('Who scream'),
        //       color: Colors.teal[400],
        //     ),
        //     Container(
        //       padding: const EdgeInsets.all(8),
        //       child: const Text('Revolution is coming...'),
        //       color: Colors.teal[500],
        //     ),
        //     Container(
        //       padding: const EdgeInsets.all(8),
        //       child: const Text('Revolution, they...'),
        //       color: Colors.teal[600],
        //     ),
        //   ],)

        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
              height: 120,
              color: Color.fromARGB(255, 237, 137, 255),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 100,
                    width: 174,
                    color: Colors.deepPurple,
                    child: ListView(
                      children: <Widget>[
                        Container(
                          height: 30,
                          child: Center(child: Text("voltage" , style: TextStyle(color: Colors.white , fontSize: 25))),
                        ),
                        Container(
                          height: 70,
                          child: Center(child: Text(globals.volt , style: TextStyle(color: Colors.white , fontSize: 25))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),

                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 100,
                    width: 175,
                    color: Colors.deepPurple,
                    child: ListView(
                      children: <Widget>[
                        Container(
                          height: 30,
                          child: Center(child: Text("Current" , style: TextStyle(color: Colors.white , fontSize: 25))),
                        ),
                        Container(
                          height: 70,
                          child: Center(child: Text(globals.curr , style: TextStyle(color: Colors.white , fontSize: 25))),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 20),

                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 100,
                    width: 175,
                    color: Colors.deepPurple,
                    child: ListView(
                      children: <Widget>[
                        Container(
                          height: 30,
                          child: Center(child: Text("Power" , style: TextStyle(color: Colors.white , fontSize: 25))),
                        ),
                        Container(
                          height: 70,
                          child: Center(child: Text(globals.power , style: TextStyle(color: Colors.white , fontSize: 25))),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 10),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 200,
                width: 250,
                color: Colors.amber[100],
                child: ListView(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 50,
                      color: Colors.deepPurple,
                      child: Center(child: Text("Units Consumed" , style: TextStyle(color: Colors.white , fontSize: 25))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 100,
                      color: Colors.deepPurple,
                      child: Center(child: Text(globals.kilowatt , style: TextStyle(color: Colors.white , fontSize: 25))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                width: 300,
                // color: Colors.amber[600],
                child: ElevatedButton(
                    onPressed: () {
                      AuthService().getinfo().then((val) {
                        globals.volt = val.data['voltage'];
                        globals.curr = val.data['current'];
                        globals.power = val.data['power'];
                        globals.kilowatt = val.data['kilowatt'];
                        globals.oning = val.data['oning'];
                        if (globals.oning == '1') {
                          ono = '0';
                          globals.out = 'OFF';
                        } else {
                          ono = '1';
                          globals.out = 'ON';
                        }

                        AuthService().onof(ono).then((valu) {});
                        print(globals.oning);
                        Navigator.pushNamed(context, MyRoutes.homepageRoute);
                      });
                    },
                    child: Center(child: Text(globals.out)),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (globals.oning == '1') return Colors.red;
                          return Colors.green; // Use the component's default.
                        },
                      ),
                    )),
              ),
            ),
            Center(
              child: Container(
                width: 300,
                // color: Colors.amber[600],
                child: ElevatedButton(
                    onPressed: () {
                      AuthService().getinfo().then((val) {
                        globals.volt = val.data['voltage'];
                        globals.curr = val.data['current'];
                        globals.power = val.data['power'];
                        globals.kilowatt = val.data['kilowatt'];
                        print(globals.oning);
                        Navigator.pushNamed(context, MyRoutes.homepageRoute);
                      });
                    },
                    child: Text("refresh"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (true) return Colors.blue;
                          return Colors.yellow; // Use the component's default.
                        },
                      ),
                    )),
              ),
            )
          ],
        ));
  }
}

class $ {}
