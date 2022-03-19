import 'package:flutter/material.dart';
import 'package:zodiac_signs/screens/dalan_screen.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool _isVis = false;
  bool _isVis2 = false;

  final _formKey = GlobalKey<FormState>();

  final TextEditingController accountController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
        hintText: "Old Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final passwordField2 = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: !_isVis2,
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _isVis2 = !_isVis2;
            });
          },
          icon: _isVis2
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off),
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "New Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final confirmButton = Material(
      elevation: 1,
      color: Colors.green.shade400,
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (builder) => const DalanScreen()),
          );
        },
        child: const Text(
          "Confirm",
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
        title: const Text("Change Password"),
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
                  const SizedBox(height: 25),
                  passwordField2,
                  const SizedBox(height: 35),
                  confirmButton,
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
