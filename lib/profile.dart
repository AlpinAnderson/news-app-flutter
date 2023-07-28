import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileModel extends ChangeNotifier {
  TextEditingController hobbyController = TextEditingController();
  TextEditingController birthYearController = TextEditingController();
  File? image;
  int age = 21;
  String hobby = 'Gaming';

  void updateProfile(BuildContext context) {
    hobby = hobbyController.text;
    int birthYear = int.tryParse(birthYearController.text) ?? 0;
    int currentYear = DateTime.now().year;

    age = currentYear - birthYear;

    Navigator.of(context).pop();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Profile updated'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  void dispose() {
    hobbyController.dispose();
    birthYearController.dispose();
    super.dispose();
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileModel(),
      child: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
        ),
        body: Consumer<ProfileModel>(
          builder: (context, model, child) {
            return Center(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: model.image != null
                          ? FileImage(model.image!)
                          : AssetImage('assets/pialasdunia.jpeg')
                              as ImageProvider<Object>?,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Username: Gilbert',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Password: ********',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Age: ${model.age} Years old',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Hobby: ${model.hobby}',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Edit Profile'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextField(
                                    controller: model.hobbyController,
                                    decoration:
                                        InputDecoration(labelText: 'Hobby'),
                                  ),
                                  TextField(
                                    controller: model.birthYearController,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        labelText: 'Birth Year'),
                                  ),
                                ],
                              ),
                              actions: [
                                ElevatedButton(
                                  onPressed: () {
                                    model.updateProfile(context);
                                  },
                                  child: Text('Save'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text('Edit'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
