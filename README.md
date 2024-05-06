# buttons Task
 <img src = "https://github.com/Vishalk0810/time_daily_tasks/assets/149374506/264490e9-0713-455c-a605-634e07feaebc" width = 22%  height = 35%>

   <br>

# Asynchronous programming

   # 1).What is  Asynchronous Programming?

- Asynchronous programming is a programming paradigm that allows tasks or operations to run independently and concurrently, without waiting for each other to complete before moving on to the next task.

# 2).What is Future Class ?

- A Future represents a value that may not be available yet. It encapsulates an asynchronous operation and provides a way to handle the result or error when it becomes available.

# 3).What is Duration class & Future.delayed() constructor with Example ?

- `Duration class :-` A span of time, such as 27 days, 4 hours, 12 minutes, and 3 seconds. A Duration represents a difference from one point in time to another.

- `Future.delated :-` The Dart Delay function's Return Value is a 'Future'. After the delay, the 'Future' is completed with the value from evaluating computation(). If computation is omitted, it instead completes with the value null.

## Example

```bash
import 'dart:io';

void main() {
  print('Hello Dart...');
  Future.delayed(
    Duration(
      seconds: 3,
    ),
    () {
      print('Hello Flutter...');
    },
  );
  print('Hello Java...');
}
```
# 4).What is the Use of the async & await keyword?

- `async :-` The async keyword is used to mark a function as asynchronous.

- `await :-` The await keyword is used to pause the execution of an asynchronous function until a particular asynchronous operation is completed. 

# 5).What is Recursion ? With Example.

- When a Function calls itself is known as Recursion

## Example

```bash
import 'dart:async';
import 'dart:io';
void main()
{
  var count=5;

  Timer.periodic(Duration(seconds: 1), (timer) { 
     print(timer.tick);
     count--;
     if(count==0)
     {
      print('End');
      timer.cancel();
     }
  });
}

```

# 6).What is Timer class with example? 

- A countdown timer that can be configured to fire once or repeatedly.

## Example

```bash
import 'dart:async';

void main(){

 print("Hello Dart...");

 Timer(Duration(seconds: 3), () { 
   print("Hello Flutter...");
 });

 print("Hello Python...");
}
```

# 7).What is Timer.periodic and use with Example? 

- A periodic timer is particularly powerful because it allows you to schedule a callback to be executed repeatedly with a specified duration between each call.

## Example

```bash

import 'dart:io';
import 'dart:async';
void main()
{
    Timer.periodic(
        Duration(seconds: 1), 
        (timer){
            print("Hello Flutter");
        }, 
        );
}
```

# Digital Clock

<img src = "https://github.com/Vishalk0810/time_daily_tasks/assets/149374506/12c5553b-39d3-41c7-9730-7aa17ef7ccba" width = 22%  height = 35%>

 <br>

# Analogue Clock

<img src = "https://github.com/Vishalk0810/time_daily_tasks/assets/149374506/492c3d5f-2181-4341-a704-71eec565761a" width = 22%  height = 35%>

<br>

# Clock App

<img src = "https://github.com/Vishalk0810/time_daily_tasks/assets/149374506/c56a827f-506d-42ca-b06d-c9c34e6297c6" width = 22%  height = 35%>

<br>

<img src = "https://github.com/Vishalk0810/time_daily_tasks/assets/149374506/12f57918-76fd-4536-b3ba-efbd872803c5" width = 22%  height = 35%>

<br>

<img src = "https://github.com/Vishalk0810/time_daily_tasks/assets/149374506/22514ba7-4f6e-4b85-bd67-4c20208a7e20" width = 22%  height = 35%>

<br>

<video src="https://github.com/Vishalk0810/time_daily_tasks/assets/149374506/c9170a31-f9dd-4387-a07f-181571f51ba6">

<br>

<video src="https://github.com/Vishalk0810/time_daily_tasks/assets/149374506/c9170a31-f9dd-4387-a07f-181571f51ba6">

<br>







