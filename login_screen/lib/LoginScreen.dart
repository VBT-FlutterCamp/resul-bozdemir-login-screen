import 'package:flutter/material.dart';
import 'package:login_screen/TextFieldContainer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordHide = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: const Text(
                "Welcome Back!",
                style: TextStyle(
                  fontSize: 22.5,
                  color: Color.fromARGB(255, 138, 138, 138),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: const Text(
                "Design Relish",
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 87, 87, 87)),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email Address",
                ),
              ),
            ),
            TextFieldContainer(
              child: TextField(
                obscureText: passwordHide,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passwordHide = !passwordHide;
                          });
                        },
                        icon: Icon(
                          Icons.visibility,
                          color: passwordHide ? Colors.black : Colors.blue,
                        ))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 10),
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: SizedBox(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 245, 54, 118),
                    fixedSize: Size(size.width * 0.9, 60),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "Create",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
