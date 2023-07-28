import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isButtonPressed = false;
  bool _isPasswordVisible =
      false; // State untuk menampilkan/memerahasi password
  TextEditingController _passwordController = TextEditingController();

  String _loginErrorMessage = '';

  void _login() {
    String password = _passwordController.text;

    if (password.isEmpty) {
      setState(() {
        _loginErrorMessage = 'Password tidak boleh kosong.';
      });
    } else if (password.length < 8) {
      setState(() {
        _loginErrorMessage = 'Password harus terdiri dari minimal 8 karakter.';
      });
    } else {
      // Logika untuk melakukan login
      setState(() {
        _loginErrorMessage = '';
        // Tambahkan logika untuk melakukan login ke sistem

        // Navigasi ke halaman beranda
        Navigator.pushNamed(context, '/home');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.lightGreenAccent,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green[300]!, Colors.yellow[400]!],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/wanted.jpeg',
                  height: 200.0,
                ),
                SizedBox(height: 30.0),
                Text(
                  'Masukkan Email Anda',
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                ),
                SizedBox(height: 10.0),
                Container(
                  width: 300.0,
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hoverColor: Colors.green,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Masukkan Password Anda',
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                ),
                SizedBox(height: 10.0),
                Container(
                  width: 300.0,
                  child: TextField(
                    controller: _passwordController,
                    style: TextStyle(color: Colors.black),
                    obscureText: !_isPasswordVisible,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hoverColor: Colors.green,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Visibility(
                  visible: _loginErrorMessage.isNotEmpty,
                  child: Text(
                    _loginErrorMessage,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                SizedBox(height: 20.0),
                GestureDetector(
                  onTapDown: (_) {
                    setState(() {
                      _isButtonPressed = true;
                    });
                  },
                  onTapUp: (_) {
                    setState(() {
                      _isButtonPressed = false;
                    });
                  },
                  onTapCancel: () {
                    setState(() {
                      _isButtonPressed = false;
                    });
                  },
                  child: GestureDetector(
                    onTap: _login,
                    child: Container(
                      height: 60.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                        color: _isButtonPressed ? Colors.black : Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20.0,
                            color:
                                _isButtonPressed ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  'Belum mempunyai akun, silakan daftar terlebih dahulu',
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                ),
                SizedBox(height: 5.0),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
