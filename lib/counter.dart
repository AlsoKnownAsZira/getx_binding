import 'package:bindings/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class counter extends StatelessWidget {
  controller cCont = Get.find();
   counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Obx(() => Text(
                    "${cCont.data}",
                    style: TextStyle(fontSize: 50),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      cCont.increment();
                    },
                    child: Text("Increment")),
                ElevatedButton(
                    onPressed: () {
                      cCont.decrement();
                    },
                    child: Text("Decrement")),],
            )
          ],
        ),
      ),
    );
  }
}
