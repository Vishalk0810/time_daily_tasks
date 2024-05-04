import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:time_daily_tasks/utils/global.dart';

class AnalogueClock extends StatefulWidget {
  const AnalogueClock({super.key});

  @override
  State<AnalogueClock> createState() => _AnalogueClockState();
}

class _AnalogueClockState extends State<AnalogueClock> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();

        if (dateTime.hour > 11) {
          meridian = 'PM';
        } else {
          meridian = 'AM';
        }
        switch (dateTime.weekday) {
          case 1:
            day = 'Monday';
            break;
          case 2:
            day = 'Tuesday';
            break;
          case 3:
            day = 'Wednesday';
            break;
          case 4:
            day = 'Thursday';
            break;
          case 5:
            day = 'Friday';
            break;
          case 6:
            day = 'Saturday';
            break;
          case 7:
            day = 'Sunday';
            break;
        };
      });
    });
    return Scaffold(
      body:  Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1584888914138-160eaadbb076?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YmxhY2slMjBuaWdodHxlbnwwfHwwfHx8MA%3D%3D ',
              ),
              fit: BoxFit.fill,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 278,
            ),
            Container(
              height: 210,
              width: 210,
              decoration: BoxDecoration(
                border: Border.all(width: 4,color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ...List.generate(60, (index) => Transform.rotate(
                      angle: ((index + 1)*6*pi)/180,
                      child: ((index + 1)%5==0)
                          ? VerticalDivider(
                        thickness: 3,
                        indent: 3,
                        endIndent: 180,
                        color: Colors.red,
                      )
                          :VerticalDivider(
                        thickness: 2,
                        indent: 3,
                        endIndent: 190,
                        color: Colors.white,
                      )
                  )),
                  Container(
                    height:10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Transform.rotate(
                    angle: (dateTime.hour % 12 + dateTime.minute /60) * 30 * pi/180,
                    child: VerticalDivider(
                      thickness: 4,
                      indent: 55,
                      endIndent: 100,
                      color: Colors.red,
                    ),
                  ),
                  Transform.rotate(
                    angle: dateTime.minute * (6 *pi)/180,
                    child: VerticalDivider(
                      thickness: 3,
                      indent: 40,
                      endIndent: 100,
                    ),
                  ),
                  Transform.rotate(
                    angle: dateTime.second * (6 *pi)/180,
                    child: VerticalDivider(
                      thickness: 2,
                      indent: 30,
                      endIndent: 100                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 278,
            ),
            Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {

                    Navigator.pushNamed(context, '/');

                  }, child: Text('Digital',style: TextStyle(color: Colors.black)),),
                  ElevatedButton(onPressed: () {

                  }, child: Text('Analogue',style: TextStyle(color: Colors.black)),),
                  ElevatedButton(onPressed: () {

                    Navigator.pushNamed(context, '/strap');

                  }, child: Text('Strap',style: TextStyle(color: Colors.black),),)

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
