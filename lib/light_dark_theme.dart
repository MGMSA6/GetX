import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class LightDarkTheme extends StatelessWidget {
  const LightDarkTheme({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Light & Dark Theme"),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("GetX Dialog Alert"),
              subtitle: Text("GetX Dialog alert with getx"),
              onTap: () {
                Get.defaultDialog(
                  title: 'Delete Chat',
                  titlePadding: EdgeInsets.only(top: 20),
                  contentPadding: EdgeInsets.all(20),
                  middleText: 'Are you sure you want to delete this chat?',
                  cancel: TextButton(
                    onPressed: () {
                      Get.back(); // This will close the dialog
                    },
                    child: Text("Cancel"),
                  ),
                  confirm: TextButton(
                    onPressed: () {
                      // Perform delete action here
                      Get.back(); // Close the dialog
                    },
                    child: Text("Ok"),
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("GetX Bottom Sheet"),
              subtitle: Text("GetX Bottom Sheet with getx"),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(
                          30))),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.light_mode),
                        title: Text("Light Theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.dark_mode),
                        title: Text("Dark Theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      )
                    ],
                  ),
                ));
              },
            ),
          )
        ],
      ),
    );
  }
}
