import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  locationController LocastionController = Get.put(locationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Permission"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                PermissionStatus res = await Permission.location.request();
                Get.snackbar(
                  ' Storage Permission',
                  '$res',
                );
              },
              child: const Text("Get storage permission"),
            ),
            ElevatedButton(
              onPressed: () async {
                PermissionStatus CameraPermission =
                    await Permission.camera.request();
                Get.snackbar(
                  ' Camera Permission',
                  '$CameraPermission',
                );
              },
              child: const Text("Get Camera permission"),
            ),
            ElevatedButton(
                onPressed: () async {
                  PermissionStatus storagepermission =
                      await Permission.storage.request();
                  Get.snackbar(
                    ' Storage Permission',
                    '$storagepermission',
                  );
                },
                child: const Text("Get storage Permission")),
            ElevatedButton(
              onPressed: () async {
                PermissionStatus smsPermission = await Permission.sms.request();
                Get.snackbar(
                  ' Sms Permission',
                  '$smsPermission',
                );
              },
              child: const Text("Get Sms permission"),
            ),
            ElevatedButton(
                onPressed: () {
                  openAppSettings();
                },
                child: const Text("Go to settings")),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
