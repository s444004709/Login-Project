import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home:  const HomePage());
  }
}

bool IsSecret = true;

class HomePage extends StatefulWidget {

 const HomePage({super.key});
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 48, 86),
        title: const Text("Login screan",
            style: TextStyle(fontSize: 25, color: Colors.white)),
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 25,
        ),
        actions: const [
          Icon(
            Icons.message,
            color: Colors.white,
            size: 25,
          ),
          SizedBox(
            width: 30,
          ),
          Icon(
            Icons.call,
            color: Colors.white,
            size: 25,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "asset/Login image.jpg",
              height: 300,
              width: 400,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Enter Email"),
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    obscureText: IsSecret,
                    decoration: InputDecoration(
                      label: const Text("Enter password"),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            IsSecret = !IsSecret;
                          });
                        },
                        icon: const Icon(Icons.remove_red_eye_outlined),
                      ),
                      border: const OutlineInputBorder(borderSide: BorderSide()),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: const Text(
                      "Do you forget the password? Click here",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 4, 61, 108)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton.icon(
                            onPressed: () {},
                            label: const Text(
                              "login",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            icon: const Icon(
                              Icons.login,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
