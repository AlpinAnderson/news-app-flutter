import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'aboutUs.dart';
import 'detailberita1.dart';
import 'detailberita2.dart';
import 'detailberita3.dart';
import 'detailberita4.dart';
import 'login_page.dart';
import 'register_page.dart';
import 'setting.dart';
import 'category.dart';
import 'profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  void _toggleTheme(bool isDarkMode) {
    setState(() {
      _isDarkMode = isDarkMode;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        iconTheme: IconThemeData(
          color: Colors.black, // Warna ikon dalam light theme
        ),
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        iconTheme: IconThemeData(
          color: Colors.white, // Warna ikon dalam dark theme
        ),
      ),
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => NewsHomePage(),
      },
    );
  }
}

class NewsHomePage extends StatefulWidget {
  @override
  _NewsHomePageState createState() => _NewsHomePageState();
}

class _NewsHomePageState extends State<NewsHomePage> {
  final List<String> _categories = [
    'Top',
    'Popular',
    'Trending',
    'Editor\'s Choice'
  ];
  static const Color kDarkBackgroundColor = Color(0xFF1A1A1A);
  static const Color kDarkTextColor = Colors.white;
  int _selectedCategoryIndex = 0;
  bool _isDarkMode = false;

  void _toggleTheme(bool newValue) {
    setState(() {
      _isDarkMode = newValue;
    });
  }

  Widget _buildCategorySelector() {
    return Container(
      height: 40,
      color: _isDarkMode ? kDarkBackgroundColor : Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedCategoryIndex = index;
                });
              },
              child: Text(
                _categories[index],
                style: TextStyle(
                  fontWeight: _selectedCategoryIndex == index
                      ? FontWeight.bold
                      : FontWeight.normal,
                  color: _selectedCategoryIndex == index
                      ? (_isDarkMode ? kDarkTextColor : Colors.black)
                      : (_isDarkMode ? kDarkTextColor : Colors.grey),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildNewsItem({
    required String title,
    required String imageUrl,
    required String author,
    required String date,
    required String category,
    required bool isEditorChoice,
    required bool isTop,
    required bool isPopular,
    required bool isTrending,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(
                imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              if (isEditorChoice)
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      'Editor\'s Choice',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              if (isTop)
                Positioned(
                  top: 8,
                  left: 125, // Mengubah posisi widget
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      'Top',
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                  ),
                ),
              if (isPopular)
                Positioned(
                  top: 8,
                  left: 175, // Mengubah posisi widget
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      'Popular',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ),
              if (isTrending)
                Positioned(
                  top: 8,
                  left: 255, // Mengubah posisi widget
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      'Trending',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: _isDarkMode ? Colors.white : Colors.black,
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(
                Icons.person,
                color: _isDarkMode ? Colors.white : Colors.black,
              ),
              SizedBox(width: 4),
              Text(
                author,
                style: TextStyle(
                  color: _isDarkMode ? Colors.white : Colors.black,
                ),
              ),
              SizedBox(width: 16),
              Icon(
                Icons.calendar_today,
                color: _isDarkMode ? Colors.white : Colors.black,
              ),
              SizedBox(width: 4),
              Text(
                date,
                style: TextStyle(
                  color: _isDarkMode ? Colors.white : Colors.black,
                ),
              ),
              SizedBox(width: 16),
              Icon(
                Icons.category_rounded,
                color: _isDarkMode ? Colors.white : Colors.black,
              ),
              Text(
                category,
                style: TextStyle(
                  color: _isDarkMode ? Colors.white : Colors.black,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('News App'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: NewsSearchDelegate(newsList: newsList),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.lightBlueAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'News App',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.category),
                title: Text('Categories'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CategoryPage()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  Navigator.pop(context); // close the Drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsPage(
                        isDarkMode: _isDarkMode,
                        toggleTheme: _toggleTheme,
                      ),
                    ),
                  );
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('About'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUsPage()),
                  );
                },
              ),
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: _isDarkMode ? Colors.grey[900] : Colors.white,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildCategorySelector(),
                SizedBox(height: 16),
                GestureDetector(
                  child: _buildNewsItem(
                    title:
                        'Gagal Gelar Piala Dunia U-20, Indonesia Telan Kerugian Rp 3,5 Triliun Lebih',
                    imageUrl: 'assets/pialasdunia.jpeg',
                    author: 'Johanes Chandra',
                    date: 'May 1, 2023',
                    category: 'Local',
                    isEditorChoice: false,
                    isTop: true,
                    isPopular: false,
                    isTrending: false,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => detail1()),
                    );
                  },
                ),
                Divider(),
                GestureDetector(
                  child: _buildNewsItem(
                    title: 'China: NATO Adalah Pembuat Onar yang Sebenarnya',
                    imageUrl: 'assets/nato.jpeg',
                    author: 'Alpin Anderson Nainggolan',
                    date: 'July 14, 2023',
                    category: 'Internasional',
                    isEditorChoice: false,
                    isTop: false,
                    isPopular: true,
                    isTrending: false,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => detail2()),
                    );
                  },
                ),
                Divider(),
                GestureDetector(
                  child: _buildNewsItem(
                    title:
                        'Tina Toon Ungkap Alasan Menikah Diam-diam, Ternyata...',
                    imageUrl: 'assets/tina.jpeg',
                    author: 'Gilbert',
                    date: 'July 13, 2023',
                    category: 'Entertaiment',
                    isEditorChoice: true,
                    isTop: false,
                    isPopular: false,
                    isTrending: false,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => detail3()),
                    );
                  },
                ),
                Divider(),
                GestureDetector(
                  child: _buildNewsItem(
                    title:
                        '5 Efek Samping Pengobatan Kanker Darah yang Perlu Diketahui',
                    imageUrl: 'assets/kanker.jpeg',
                    author: 'Gilbert',
                    date: 'July 14, 2023',
                    category: 'Health',
                    isEditorChoice: false,
                    isTop: false,
                    isPopular: false,
                    isTrending: true,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => detail4()),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

class NewsSearchDelegate extends SearchDelegate<String> {
  final List<String> newsList;

  NewsSearchDelegate({required this.newsList});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Perform search and display the results based on the query
    final searchResults = newsList
        .where((title) => title.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        final newsTitle = searchResults[index];
        return ListTile(
          title: Text(newsTitle),
          // Handle the onTap action when a news title is selected
          onTap: () {
            // Close the search and navigate to the details page
            close(context, newsTitle);
            // Add your navigation logic here
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Display suggestions while the user is typing
    final suggestionList = newsList
        .where((title) => title.toLowerCase().startsWith(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        final suggestion = suggestionList[index];
        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
            showResults(context);
          },
        );
      },
    );
  }
}

List<String> newsList = [
  'Gagal Gelar Piala Dunia U-20, Indonesia Telan Kerugian Rp 3,5 Triliun Lebih',
  'China: NATO Adalah Pembuat Onar yang Sebenarnya',
  'Tina Toon Ungkap Alasan Menikah Diam-diam, Ternyata...',
  '5 Efek Samping Pengobatan Kanker Darah yang Perlu Diketahui',
  // ...
];
