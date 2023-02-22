import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
   bool _passwordVisible=true;

  @override
  void initState() {
    _passwordVisible =false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ClipPath(
              clipper: WaveClipperOne(),
              child: Container(
                height: 250,
                color: Colors.blue,
                // ignore: prefer_const_constructors
                child: Center(
                    child: Text(
                  "Register",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                )),
              ),
            ),
           SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  hintText: 'exmaple@yahoo.com',
                  label: Text('Email'),
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                keyboardType: TextInputType.text,
                obscureText: !_passwordVisible,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  hintText: '123222....5',
                  label: Text('password'),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: GestureDetector(
                    onLongPress: () {
                      setState(() {
                        _passwordVisible = true;
                      });
                    },
                    onLongPressUp: () {
                      setState(() {
                        _passwordVisible = false;
                      });
                    },
                    child: Icon(_passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  hintText: '0100000000000',
                  label: Text('phone'),
                  prefixIcon: Icon(Icons.call),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => print('hello'),
                child: Container(
                  //width: 100.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    border: Border.all(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Center(
                    child: Text(
                      'Register',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => print('hello'),
                child: Container(
                  //width: 100.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.blue, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Center(
                    child: Text(
                      'login',
                      style: TextStyle(fontSize: 18.0, color: Colors.blue),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
