import 'package:flutter/material.dart';

class Logging extends StatelessWidget {
  const Logging({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 100,
                      bottom: 10,
                      left: 53,
                      right: 53,
                    ),
                    child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        height: 70,
                        child: const Row(
                          children: [
                            Text(
                              'Khedma',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Attendence',
                              style: TextStyle(
                                  color: Colors.deepPurpleAccent,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                  )
                ],
              ),
              Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'please fill the form below to login',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )),
              const Spacer(
                flex: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [TextFormField()],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Colors.deepPurpleAccent,
                        fixedSize: const Size(260, 70),
                      ),
                      onPressed: () {},
                      child: const Text('Login')),
                ],
              ),
            ],
          )),
    );
  }
}
