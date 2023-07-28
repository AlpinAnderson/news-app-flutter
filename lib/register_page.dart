import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isButtonPressed = false;
  bool _isChecked = false;
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  DateTime? _selectedDate;
  String _errorMessage = '';

  void _register() {
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;

    if (password.isEmpty || confirmPassword.isEmpty) {
      setState(() {
        _errorMessage = 'Password dan konfirmasi password tidak boleh kosong.';
      });
    } else if (password.length < 8 || confirmPassword.length < 8) {
      setState(() {
        _errorMessage =
            'Password dan konfirmasi password harus lebih dari 8 karakter.';
      });
    } else if (password != confirmPassword) {
      setState(() {
        _errorMessage = 'Password dan konfirmasi password harus sama.';
      });
    } else {
      setState(() {
        _errorMessage = '';
        // Lakukan logika pendaftaran pengguna di sini

        // Navigasi ke halaman login setelah pendaftaran berhasil
        Navigator.pushNamed(context, '/');
      });
    }
  }

  Future<void> _selectDateOfBirth() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register ',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
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
                      hoverColor: Colors.green,
                      filled: true,
                      fillColor: Colors.white,
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
                      hoverColor: Colors.green,
                      fillColor: Colors.white,
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
                SizedBox(height: 20.0),
                Text(
                  'Konfirmasi Password',
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                ),
                SizedBox(height: 10.0),
                Container(
                  width: 300.0,
                  child: TextField(
                    controller: _confirmPasswordController,
                    style: TextStyle(color: Colors.black),
                    obscureText: !_isConfirmPasswordVisible,
                    decoration: InputDecoration(
                      filled: true,
                      hoverColor: Colors.green,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isConfirmPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _isConfirmPasswordVisible =
                                !_isConfirmPasswordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Tanggal Lahir',
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                ),
                SizedBox(height: 10.0),
                GestureDetector(
                  onTap: _selectDateOfBirth,
                  child: AbsorbPointer(
                    child: Container(
                      width: 300.0,
                      child: TextField(
                        controller: TextEditingController(
                          text: _selectedDate != null
                              ? _selectedDate.toString().split(' ')[0]
                              : '',
                        ),
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          filled: true,
                          hoverColor: Colors.green,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: Icon(
                            Icons.calendar_today,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Visibility(
                  visible: _errorMessage.isNotEmpty,
                  child: Text(
                    _errorMessage,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      },
                    ),
                    Text(
                      'Saya sudah membaca dan menyetujui Syarat dan Ketentuan.',
                      style: TextStyle(fontSize: 14.0, color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 30.0),
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
                    onTap: _register,
                    child: Container(
                      height: 60.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                        color: _isButtonPressed ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
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
                          'Register',
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
                  'Sudah memiliki akun, silahkan masuk',
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                ),
                SizedBox(height: 5.0),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text(
                    'Login',
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
