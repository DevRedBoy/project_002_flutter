import 'package:flutter/material.dart';
import 'package:zodiac_signs/screens/change_password_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isVis = false;

  final _formKey = GlobalKey<FormState>();

  final TextEditingController accountController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // final accountField = TextFormField(
    //   autofocus: false,
    //   controller: accountController,
    //   keyboardType: TextInputType.name,
    //   onSaved: (value) {
    //     accountController.text = value!;
    //   },
    //   textInputAction: TextInputAction.next,
    //   decoration: InputDecoration(
    //     prefixIcon: const Icon(Icons.person),
    //     contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
    //     hintText: "Account",
    //     border: OutlineInputBorder(
    //       borderRadius: BorderRadius.circular(10),
    //     ),
    //   ),
    // );

    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: !_isVis,
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _isVis = !_isVis;
            });
          },
          icon: _isVis
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off),
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final loginButton = Material(
      elevation: 1,
      color: Colors.green.shade400,
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (builder) => const ChangePassword(),
            ),
          );
        },
        child: const Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("LogIn to Zodiac Sign"),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
            child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   height: 200,
                  //   child: Image.asset(
                  //     "assets/gor.jpeg",
                  //     fit: BoxFit.contain,
                  //   ),
                  // ),
                  const SizedBox(height: 25),
                  passwordField,
                  const SizedBox(height: 35),
                  loginButton,
                  const SizedBox(height: 15),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
