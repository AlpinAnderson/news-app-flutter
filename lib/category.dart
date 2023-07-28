import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  String selectedCategory = '';

  // Function to save selected category and show dialog
  void _saveCategory() {
    if (selectedCategory.isNotEmpty) {
      print('Selected category saved: $selectedCategory');
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Color.fromRGBO(213, 31, 229, 0.965),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Selected Category',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'You have selected the category:',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    selectedCategory,
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
  }

  // Function to navigate back to Home page
  void _goToHome() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 16.0),
            Text(
              'Select a category:',
              style: TextStyle(fontSize: 20.0, color: Theme.of(context).textTheme.bodyText1!.color),
            ),
            SizedBox(height: 16.0),
            ChoiceChip(
              label: Text('Local'),
              selected: selectedCategory == 'Local',
              onSelected: (selected) {
                setState(() {
                  selectedCategory = selected ? 'Local' : '';
                });
              },
              selectedColor: Colors.red,
              labelStyle: TextStyle(
                color: selectedCategory == 'Local' ? Colors.white : Colors.black,
              ),
              avatar: selectedCategory == 'Local' ? Icon(Icons.check) : null,
            ),
            SizedBox(height: 8.0),
            ChoiceChip(
              label: Text('Health'),
              selected: selectedCategory == 'Health',
              onSelected: (selected) {
                setState(() {
                  selectedCategory = selected ? 'Health' : '';
                });
              },
              selectedColor: Colors.green,
              labelStyle: TextStyle(
                color: selectedCategory == 'Health' ? Colors.white : Colors.black,
              ),
              avatar: selectedCategory == 'Health' ? Icon(Icons.check) : null,
            ),
            SizedBox(height: 8.0),
            ChoiceChip(
              label: Text('Entertainment'),
              selected: selectedCategory == 'Entertainment',
              onSelected: (selected) {
                setState(() {
                  selectedCategory = selected ? 'Entertainment' : '';
                });
              },
              selectedColor: Colors.blue,
              labelStyle: TextStyle(
                color: selectedCategory == 'Entertainment' ? Colors.white : Colors.black,
              ),
              avatar: selectedCategory == 'Entertainment' ? Icon(Icons.check) : null,
            ),
            SizedBox(height: 8.0),
            ChoiceChip(
              label: Text('International'),
              selected: selectedCategory == 'International',
              onSelected: (selected) {
                setState(() {
                  selectedCategory = selected ? 'International' : '';
                });
              },
              selectedColor: Colors.purple,
              labelStyle: TextStyle(
                color: selectedCategory == 'International' ? Colors.white : Colors.black,
              ),
              avatar: selectedCategory == 'International' ? Icon(Icons.check) : null,
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: _goToHome,
                  child: Text('Cancel'),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                ),
                SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: _saveCategory,
                  child: Text('Save'),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
