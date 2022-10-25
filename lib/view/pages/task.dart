import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/provider/task/counter task.dart';
import '../../controller/provider/task/countertask2.dart';

class Task extends StatelessWidget {
  const Task({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Center(
              child: ElevatedButton(onPressed: (){
                Provider.of<CounterTask>(context,listen: false).resetCounter();
                Provider.of<CounterRightSide>(context,listen: false).resetCounter();
              }, child: Text("Reset")),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "E",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Text("B", style: TextStyle(fontSize: 20))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Consumer<CounterTask>(
                  builder: (context, value, child) {
                    return Text(
                        value.counter.toString(),
                        style: TextStyle(fontSize: 18));
                  },
                ),
                Consumer<CounterRightSide>(
                  builder: (context, value, child) {
                    return Text(value.counterRight.toString(),
                        style: TextStyle(fontSize: 18));
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: Provider.of<CounterTask>(context,listen: false).incrementWithTwo,
                    child: Text("+2")
                ),
                Container(
                  color: Colors.red,
                  width: 2,
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: (){
                      Provider.of<CounterRightSide>(context,listen: false).incrementWithTwo();
                    },
                    child: Text("+2")
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: () {
                  Provider.of<CounterTask>(context,listen: false).incrementWithThree();
                }, child: Text("+3")),
                Container(
                  color: Colors.red,
                  width: 2,
                  height: 50,
                ),
                ElevatedButton(onPressed: () {
                  Provider.of<CounterRightSide>(context,listen: false).incrementWithThree();
                }, child: Text("+3")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: () {
                  Provider.of<CounterTask>(context,listen: false).incrementWithFive();
                }, child: Text("+5")),
                Container(
                  color: Colors.red,
                  width: 2,
                  height: 50,
                ),
                ElevatedButton(onPressed: () {
                  Provider.of<CounterRightSide>(context,listen: false).incrementWithFive();
                }, child: Text("+5")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: () {
                  Provider.of<CounterTask>(context,listen: false).incrementWithTen();
                }, child: Text("+10")),
                Container(
                  color: Colors.red,
                  width: 2,
                  height: 50,
                ),
                ElevatedButton(onPressed: () {
                  Provider.of<CounterRightSide>(context,listen: false).incrementWithFive();
                }, child: Text("+10")),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
