// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:counter_riverpod/riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Homepage extends ConsumerWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Riverpod Counter Provider'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter App!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              ref.watch(riverpodHardLevel).counter.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                    onPressed: () {
                      ref.read(riverpodHardLevel).addCounter();
                      //watch listen to changes
                      //Don't listen the changes (Edit The Value)
                    },
                    icon: Icon(Icons.add),
                    label: Text('Increase')),
                ElevatedButton.icon(
                    onPressed: () {
                      ref.read(riverpodHardLevel).removeCounter();
                    },
                    icon: Icon(Icons.remove),
                    label: Text('Decrease')),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  ref.read(riverpodHardLevel).clear();
                },
                icon: Icon(Icons.clear),
                label: Text('Clear'))
          ],
        ),
      ),
    );
  }
}
