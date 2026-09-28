import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('asstes/image.png'),
                width: 150,
                height: 150,
              ),
              SizedBox(height: 20),
              Text(
                "Welcome Back",
                style: TextStyle(fontSize: 40, fontWeight: .bold),
              ),

              Text(
                "Sign in to continue",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      shape: Border.all(color: Colors.grey),

                      minWidth: 100,
                      onPressed: () {},
                      child: Align(
                        alignment: .centerLeft,
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('asstes/google.png'),
                              width: 15,
                              height: 15,
                            ),
                            SizedBox(width: 15),
                            Text(
                              "Contiue with google",
                              style: TextStyle(fontSize: 10, fontWeight: .bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: MaterialButton(
                      shape: Border.all(color: Colors.grey),
                      minWidth: 100,
                      onPressed: () {},
                      child: Align(
                        alignment: .centerLeft,
                        child: Row(
                          children: [
                            Icon(Icons.apple, weight: 10),
                            Text(
                              "Contiue with apple",
                              style: TextStyle(fontSize: 10, fontWeight: .bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(child: Divider()),
                  SizedBox(width: 15),
                  Text(
                    "or",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  SizedBox(width: 15),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                  hintText: "Email address",
                ),
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock_outline),
                  hintText: "Password",
                ),
              ),
              SizedBox(height: 30),
              MaterialButton(
                color: Colors.blue,
                minWidth: 200,
                onPressed: () {},
                child: Text(
                  "login",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: .bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: .center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontWeight: .bold,
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontWeight: .bold,
                        fontSize: 12,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                    fontWeight: .bold,
                    fontSize: 12,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
