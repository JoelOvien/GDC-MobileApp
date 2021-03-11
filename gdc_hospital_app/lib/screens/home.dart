import 'package:flutter/material.dart';
import 'package:gdc_hospital_app/controllers/homeController.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

// final Widget svg = SvgPicture.asset(
//   assetName,
// );
class _HomeState extends State<Home> {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Obx(
              () => Text(
                '${controller.count.value}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            ElevatedButton(
              onPressed: controller.decrement,
              child: Text("Decrease values"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
