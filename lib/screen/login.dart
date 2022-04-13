import 'package:flutter/material.dart';
import 'package:tutorial_app/screen/homepage.dart';

import '../colors.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(vertical: 40),
      height: size.height,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.9,
              width: size.width * 0.9,
              color: const Color(0x94E84FF),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icon/icon4.png',
                    height: size.height * 0.09,
                  ),
                  SizedBox(height: size.height * 0.01),
                  const Text(
                    "Tutorial App",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w900,
                        fontSize: 20),
                  ),
                  SizedBox(height: size.height * 0.02),
                  RoundedInputField(
                    hintText: "User Name",
                  ),
                  const RoundPasswordField(),
                  const RoundedButton(
                    text: 'LOGIN',
                  ),
                  SizedBox(height: size.height * 0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an Account ? ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const SizedBox(width: 10),
                      TextButton(
                          style: TextButton.styleFrom(primary: Colors.white),
                          onPressed: () {},
                          child: const Text(
                            "Register",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class RoundPasswordField extends StatelessWidget {
  const RoundPasswordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: (value) {},
        obscureText: true,
        decoration: const InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Colors.blue,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.blue,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String text;

  const RoundedButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(29),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue[100],
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 40)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HomePage();
                }));
              },
              child: Text(
                text,
                style: TextStyle(color: AppColor.homePageTitle),
              ))),
    );
  }
}

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;

  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.blue,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;

  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
