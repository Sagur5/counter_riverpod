// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:counter_riverpod/riverpod_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

 // Replace with the correct import

class Homepage extends ConsumerWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(numberchangeProvider); // Watch the provider

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("This is a counter app")),
          SizedBox(height: 30),

          // Display current count
          Center(child: Text(counter.count.toString())),

          SizedBox(height: 30), // SizedBox for spacing between widgets

         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [ 
           ElevatedButton(
            onPressed: () {
              // Call the increase method on the provider
              ref.read(numberchangeProvider).increase();
            },
            child: Text("Increase"),
          ),
          ElevatedButton(
            onPressed: () {
              // Call the decrease method on the provider
              ref.read(numberchangeProvider).decrease();
            },
            child: Text("Decrease"),
          ),
          ElevatedButton(
            onPressed: () {
              // Call the clear method on the provider
              ref.read(numberchangeProvider).clear();
            },
            child: Text("Clear"),
          ),
         ],),
        ],
      ),
    );
  }
}
