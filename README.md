# time_daily_tasks

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# buttons
 <img src = "https://github.com/Vishalk0810/time_daily_tasks/assets/149374506/264490e9-0713-455c-a605-634e07feaebc" width = 22%  height = 35%>

   <br>

# Asynchronous programming

   # 1).What is  Asynchronous Programming?

Asynchronous programming is a programming paradigm that allows tasks or operations to run independently and concurrently, without waiting for each other to complete before moving on to the next task.

# 2).What is Future Class ?

A Future represents a value that may not be available yet. It encapsulates an asynchronous operation and provides a way to handle the result or error when it becomes available.

# 3).What is Duration class & Future.delayed() constructor with Example ?

- `Duration class :-` A span of time, such as 27 days, 4 hours, 12 minutes, and 3 seconds. A Duration represents a difference from one point in time to another.

- `Future.delated :-` The Dart Delay function's Return Value is a 'Future'. After the delay, the 'Future' is completed with the value from evaluating computation(). If computation is omitted, it instead completes with the value null.

# Example

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

When a Function calls itself is known as Recursion

# Example


   
