// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:khedma_attendence/Profile.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  final Meeting a = const Meeting(
    meetingname: 'اجتماع الخدمة',
    date: '23/02/2024',
    time: '12:30',
  );
  final Meeting b = const Meeting(
    meetingname: 'اجتماع اعداد خدام ',
    date: '23/02/2024',
    time: '12:30',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        title: const Text(
          ' Home ',
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Meeting(
                meetingname: a.meetingname,
                date: a.date,
                time: a.time,
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Meeting(
                meetingname: b.meetingname,
                date: b.date,
                time: b.time,
              ),
            ],
          ),
          const Spacer(
            flex: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  backgroundColor: Colors.deepPurpleAccent,
                  fixedSize: const Size(150, 70),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.account_box_rounded),
                    Text(
                      'Profile',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}

/////////////////////////////////////////////////////////////////////////////
class Meeting extends StatelessWidget {
  const Meeting({super.key, this.meetingname, this.date, this.time});
  final String? meetingname;
  final String? date;
  final String? time;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: Colors.deepPurpleAccent,
            fixedSize: const Size(300, 200),
          ),
          onPressed: () {},
          child: Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    meetingname!,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    date!,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    time!,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
