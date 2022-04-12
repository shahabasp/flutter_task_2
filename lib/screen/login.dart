import 'package:flutter/material.dart';
import 'package:tutorial_app/screen/homepage.dart';

import '../colors.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 60),
              height: 575,
              width: 375,
              color: const Color(0x94E84FF),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icon/icon4.png', height: 100,),
                  const SizedBox(height: 10),
                  const Text("Tutorial App", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w900, fontSize: 20),),
                  const Padding(
                    padding:  EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: RoundedInputField(hintText: "User Name",),
                  ),
                  const RoundPasswordField(),
                  const RoundedButton(text: 'LOGIN',),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an Account ? ", style: TextStyle(color: Colors.blue),),
                      const SizedBox(width: 10),
                      TextButton(
                          style: TextButton.styleFrom(primary: Colors.white),
                          onPressed: () {},
                          child: const Text("Register", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)
                      )
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
          icon: Icon(Icons.lock, color: Colors.blue,),
          suffixIcon: Icon(Icons.visibility, color: Colors.blue,),
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
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: 325,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(29),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue[100],
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40)),
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
          icon: Icon(icon, color: Colors.blue,),
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
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: 325,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
