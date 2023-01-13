import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progress_check/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final usernameController = TextEditingController();
final passwordController = TextEditingController();
String username = '';
String password = '';
const errorUsername = 'Incorrect Username';
const errorPassword = 'Incorrect Password';
bool incorrectDetails = false;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffACBDAA),
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/developer (2).png'),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: TextField(
                  controller: usernameController,
                  onSubmitted: (value) {
                    username = usernameController.text;
                  },
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      errorText: incorrectDetails ? errorUsername : null,
                      labelText: 'Username',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: TextFormField(
                  controller: passwordController,
                  onChanged: (value) {
                    password = passwordController.text;
                  },
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          usernameController.clear();
                          passwordController.clear();
                          username = '';
                          password = '';
                        },
                      ),
                      errorText: incorrectDetails ? errorPassword : null,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: ElevatedButton(
                    onPressed: (() {
                      setState(() {
                        if (username == 'laj' && password == 'laj12345') {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            incorrectDetails = false;
                            return const HomePage();
                          })));
                        } else {
                          incorrectDetails = true;
                        }
                      });
                    }),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff1E2D4C)),
                    child: Text(
                      'LOG IN',
                      style: GoogleFonts.bebasNeue(fontSize: 25),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: (() {
                    _showDialog(context);
                  }),
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Color(0xff1E2D4C),
                        decoration: TextDecoration.underline),
                  ))
            ],
          ),
        ),
      )),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        icon: const Icon(
          Icons.info_outline,
          size: 30,
          color: Colors.red,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        title: const Text('Account Information'),
        content: const Text('Username: laj\n\nPassword: laj12345'),
        actions: <Widget>[
          TextButton(
            child: const Text(
              'OK',
              style: TextStyle(color: Color(0xff1E2D4C)),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
