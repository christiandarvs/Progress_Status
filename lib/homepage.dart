import 'package:flutter/material.dart';
import 'package:progress_check/account.dart';
import 'package:progress_check/content.dart';
import 'package:progress_check/gallery.dart';
import 'package:progress_check/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int currentIndex = 0;
final _pages = [const MainContent(), const Gallery(), const AccountPage()];
final appBarNames = ['Home', 'Gallery', 'Account'];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text(appBarNames[currentIndex]),
        elevation: 0,
        backgroundColor: const Color(0Xff6C74E1),
      ),
      drawer: Drawer(
          backgroundColor: const Color(0xffF2F7FF),
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/controller.jpg'),
                          fit: BoxFit.cover)),
                  currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('images/dp.jpg')),
                  accountName: Text('christiandarvs'),
                  accountEmail: Text('myacc@gmail.com')),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                },
                iconColor: const Color(0Xff6C74E1),
                title: const Text('Close Drawer'),
                leading: const Icon(Icons.close),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return const LoginPage();
                  })));
                  usernameController.clear();
                  passwordController.clear();
                  username = '';
                  password = '';
                  debugPrint('Username: $username');
                  debugPrint('Password: $password');
                },
                title: const Text('Log out'),
                leading: const Icon(
                  Icons.logout,
                  color: Color(0Xff6C74E1),
                ),
              )
            ],
          )),
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        fixedColor: const Color(0Xff6C74E1),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Feed'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Account'),
        ],
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
