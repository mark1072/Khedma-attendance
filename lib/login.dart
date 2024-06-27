import 'package:flutter/material.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
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
                  child: const Image(image: AssetImage('images/4170461.jpg'))),
              const Spacer(
                flex: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Colors.black87,
                          fixedSize: const Size(260, 70)),
                      onPressed: () {},
                      child: const Text('Login as Admin'))
                ],
              ),
              const Spacer(
                flex: 1,
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
                      child: const Text('Login as User')),
                ],
              ),
              const Spacer(
                flex: 2,
              )
            ],
          )),
    );
  }
}
