import 'package:flutter/material.dart';
import 'package:wisata/provider/auth_provider.dart';
import 'package:wisata/widget/textfield/textfield_email_widget.dart';
import 'package:wisata/widget/textfield/textfield_pass_widget.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var loadAuth = Provider.of<WisataAuthProvider>(context);
    return Container(
      color: const Color.fromARGB(255, 0, 0, 0),
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              // Background image
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/bali.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Content
              Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center vertically
                  crossAxisAlignment:
                      CrossAxisAlignment.center, // Center horizontally
                  children: [
                    // Selamat datang text
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(text: "Selamat datang di Apps "),
                          TextSpan(
                            text: "Wisata Indonesia",
                            style: TextStyle(color: Colors.green[800]),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Title (Login / Register)
                    Text(
                      loadAuth.islogin ? "Masuk" : "Daftar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22, // Sesuaikan ukuran seperti selamat datang
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Input form container
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Theme.of(context).canvasColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Form(
                        key: loadAuth.form,
                        child: Column(
                          children: [
                            // Register label
                            const SizedBox(height: 10),
                            // Email input
                            TextfieldEmailWidget(controller: email),
                            const SizedBox(height: 15),
                            // Password input
                            TextfieldPasswordWidget(controller: password),
                            const SizedBox(height: 30),
                            // Submit button
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                onPressed: () {
                                  loadAuth.submit();
                                },
                                child: Text(
                                  loadAuth.islogin ? "Masuk" : "Daftar",
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            // Switch between login and register
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  loadAuth.islogin = !loadAuth.islogin;
                                });
                              },
                              child: Text(
                                loadAuth.islogin
                                    ? "Buat Akun"
                                    : "Sudah Punya Akun",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
