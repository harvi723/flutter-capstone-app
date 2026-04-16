import 'package:flutter/material.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void signup() {
    if (username.text.isEmpty || email.text.isEmpty || password.text.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("All fields required")));
    } else {
      Navigator.push(context,
          MaterialPageRoute(builder: (_) => LoginScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Signup")),
      body: Column(
        children: [
          TextField(controller: username, decoration: InputDecoration(labelText: "Username")),
          TextField(controller: email, decoration: InputDecoration(labelText: "Email")),
          TextField(controller: password, decoration: InputDecoration(labelText: "Password")),
          ElevatedButton(onPressed: signup, child: Text("Sign Up")),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Already have account? Login"),
          )
        ],
      ),
    );
  }
}