import 'dart:async';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_daily_tasks/utils/global.dart';

class DigitalClock extends StatefulWidget {
  const DigitalClock({super.key});

  @override
  State<DigitalClock> createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
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
        }
        ;
      });
    });
    return Scaffold(
      body: Container(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${dateTime.hour % 12} : ${dateTime.minute} : ${dateTime.second} ',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 40,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 11),
                  child: Text(
                    meridian,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              day,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 30,),
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
          ],
        ),
      ),
    );
  }
}
