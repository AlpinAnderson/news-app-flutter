import 'package:flutter/material.dart';
import 'login_page.dart';

class SettingsPage extends StatefulWidget {
  final bool isDarkMode;
  final ValueChanged<bool> toggleTheme;

  SettingsPage({required this.isDarkMode, required this.toggleTheme});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String _reminderFrequency = 'Harian';
  bool _isDarkMode = false;

  @override
  void initState() {
    super.initState();
    _isDarkMode = widget.isDarkMode;
  }

  // Function to show reminder dialog
  void _showReminderDialog(String frequency) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Color.fromARGB(255, 148, 74, 25),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Reminder',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Anda memilih untuk pengingat:',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 8.0),
                Text(
                  frequency,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('OK'),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    onPrimary: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Container(
        color: _isDarkMode ? Colors.grey[900] : Colors.white,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          children: <Widget>[
            SizedBox(height: 16.0),
            Text(
              'Theme',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: _isDarkMode ? Colors.white : Colors.black),
            ),
            Divider(height: 32.0),
            ListTile(
              leading: Icon(Icons.brightness_6, color: _isDarkMode ? Colors.white : Colors.black),
              title: Text('Dark Mode', style: TextStyle(color: _isDarkMode ? Colors.white : Colors.black)),
              trailing: GestureDetector(
                onTap: () {
                  setState(() {
                    _isDarkMode = !_isDarkMode;
                    widget.toggleTheme(_isDarkMode);
                  });
                },
                child: Container(
                  width: 50.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: _isDarkMode ? Colors.blueAccent : Colors.grey[300],
                  ),
                  alignment: _isDarkMode ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    width: 24.0,
                    height: 24.0,
                    margin: EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 32.0),
            Text(
              'Reminders',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: _isDarkMode ? Colors.white : Colors.black),
            ),
            Divider(height: 32.0),
            ListTile(
              title: Text('Ingatkan saya', style: TextStyle(color: _isDarkMode ? Colors.white : Colors.black)),
            ),
            RadioListTile(
              title: Text('Bulanan', style: TextStyle(color: _isDarkMode ? Colors.white : Colors.black)),
              value: 'Bulanan',
              groupValue: _reminderFrequency,
              onChanged: (String? value) {
                setState(() {
                  _reminderFrequency = value!;
                });
                _showReminderDialog(_reminderFrequency);
              },
            ),
            RadioListTile(
              title: Text('Harian', style: TextStyle(color: _isDarkMode ? Colors.white : Colors.black)),
              value: 'Harian',
              groupValue: _reminderFrequency,
              onChanged: (String? value) {
                setState(() {
                  _reminderFrequency = value!;
                });
                _showReminderDialog(_reminderFrequency);
              },
            ),
            RadioListTile(
              title: Text('Mingguan', style: TextStyle(color: _isDarkMode ? Colors.white : Colors.black)),
              value: 'Mingguan',
              groupValue: _reminderFrequency,
              onChanged: (String? value) {
                setState(() {
                  _reminderFrequency = value!;
                });
                _showReminderDialog(_reminderFrequency);
              },
            ),
            SizedBox(height: 32.0),
            TextButton(
              child: Text('Log Out', style: TextStyle(color: _isDarkMode ? Colors.green : Colors.green)),
              onPressed: () {
                // Implement logic to log out here
                Navigator.pop(context);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
