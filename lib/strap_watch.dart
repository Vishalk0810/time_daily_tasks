import 'dart:async';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:time_daily_tasks/utils/global.dart';

class StrapWatch extends StatefulWidget {
  const StrapWatch({super.key});

  @override
  State<StrapWatch> createState() => _StrapWatchState();
}

class _StrapWatchState extends State<StrapWatch> {
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
        switch (dateTime.month) {
          case 1:
            month = 'January';
            break;
          case 2:
            month = 'February';
            break;
          case 3:
            month = 'March';
            break;
          case 4:
            month = 'April';
            break;
          case 5:
            month = 'May';
            break;
          case 6:
            month = 'June';
            break;
          case 7:
            month = 'July';
            break;
          case 8:
            month = 'August';
            break;
          case 9:
            month = 'September';
            break;
          case 10:
            month = 'October';
            break;
          case 11:
            month = 'November';
            break;
          case 12:
            month = 'December';
            break;
        }
        ;
      });
    });
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1584888914138-160eaadbb076?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YmxhY2slMjBuaWdodHxlbnwwfHwwfHx8MA%3D%3D ',
              ),
              fit: BoxFit.cover
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 257,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 243,
                    width: 243,
                    child: CircularProgressIndicator(
                      strokeWidth: 7,
                      color: Colors.white,
                      value: dateTime.second/60,
                    ),
                  ),
                  SizedBox(
                    height: 230,
                    width: 230,
                    child: CircularProgressIndicator(
                      strokeWidth: 7,
                      color: Colors.amber,
                      value: dateTime.minute/60,
                    ),
                  ),
                  SizedBox(
                    height: 216,
                    width: 216,
                    child: CircularProgressIndicator(
                      strokeWidth: 7,
                      color: Colors.red,
                      value: ((dateTime.hour % 12 + dateTime.minute / 60)/12),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        day,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '$month ${dateTime.day},${dateTime.year}',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${dateTime.hour%12} : ${dateTime.minute} : ${dateTime.second}',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 7),
                            child: Text(
                              meridian,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
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

                      Navigator.pushNamed(context, '/analogue');

                    }, child: Text('Analogue',style: TextStyle(color: Colors.black)),),
                    ElevatedButton(onPressed: () {

                    }, child: Text('Strape',style: TextStyle(color: Colors.black),),)

                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}
