import 'package:flutter/material.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 70),
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black,width: 1)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {

                    }, child: Icon(Icons.add),),
                    ElevatedButton(onPressed: () {

                    }, child: Text('Heyyy...')),
                    ElevatedButton(onPressed: () {

                    }, child: Row(
                      children: [
                        Icon(Icons.add),
                        Text('Heyyy...'),
                      ],
                    )),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 40),
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black,width: 1)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(onPressed: () {

                    }, child: Icon(Icons.add)),
                    OutlinedButton(onPressed: () {

                    }, child: Text('Hello...')),
                    OutlinedButton(onPressed: () {

                    }, child: Row(
                      children: [
                        Icon(Icons.add),
                        Text('Hello...'),
                      ],
                    )),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 40),
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black,width: 1)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(onPressed: () {

                    },child: Icon(Icons.add),),
                    FloatingActionButton(onPressed: () {

                    },child: Text('Hii...')),
                    FloatingActionButton(onPressed: () {

                    },child: Row(
                      children: [
                        Icon((Icons.add)),
                        Text('Hii...'),
                      ],
                    )),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 40),
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black,width: 1)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(onPressed: () {

                    }, child: Icon(Icons.add)),
                    TextButton(onPressed: () {

                    }, child: Text('Hlo...')),
                    TextButton(onPressed: () {

                    }, child: Row(
                      children: [
                        Icon(Icons.add),
                        Text('Hlo...'),
                      ],
                    )),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 40),
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black,width: 1)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FilledButton(onPressed: () {

                    }, child: Icon(Icons.add)),
                    FilledButton(onPressed: () {

                    }, child: Text('Hey...')),
                    FilledButton(onPressed: () {

                    }, child: Row(
                      children: [
                        Icon(Icons.add),
                        Text('Hey...'),
                      ],
                    )),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 40),
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black,width: 1)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FilledButton.tonal(onPressed: () {

                    }, child: Icon(Icons.add)),
                    FilledButton.tonal(onPressed: () {

                    }, child: Text('Hlo...')),
                    FilledButton.tonal(onPressed: () {

                    }, child: Row(
                      children: [
                        Icon(Icons.add),
                        Text('Hlo...'),
                      ],
                    )),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 40),
                height: 70,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black,width: 1)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: () {

                    }, icon: Icon(Icons.add)),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
