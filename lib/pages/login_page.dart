import 'package:flutter/material.dart';
// import 'package:startgit/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/image/login_image.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {
                        });

                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter your Password",
                        labelText: "Password",
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      width: 130,
                      height: 40,
                      alignment: Alignment.center,
                      // ignore: sort_child_properties_last
                      child:
                      Text("Login",
                      style: TextStyle(
                        color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
                        ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(8)
                      ),
                    ),
                    // ElevatedButton(
                    //   style: TextButton.styleFrom(minimumSize: Size(100, 50)),
                    //   // ignore: avoid_print
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   child: const Text("Login"),
                    // )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
