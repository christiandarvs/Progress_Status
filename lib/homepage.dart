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
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/139038/pexels-photo-139038.jpeg?auto=compress&cs=tinysrgb&w=600'),
                      fit: BoxFit.cover)),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent.fmnl25-1.fna.fbcdn.net/v/t39.30808-6/306797224_154788703853657_4201603360433828675_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeH6HgZcyAlnBfPeuzh8-eADmZZNTvYgsJaZlk1O9iCwlsh-SxS7X5xIpTNSOJKQjhSpP7IerOMwFySZAioWJLTn&_nc_ohc=MPFatFO8POQAX-HrgAS&_nc_ht=scontent.fmnl25-1.fna&oh=00_AfBSYusY_6QWsRs8uWiOoq54XWfVi0bpBsV0VenGariePg&oe=63C4C65F'),
              ),
              accountName: Text('christiandarvs'),
              accountEmail: Text('myacc@gmail.com')),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            iconColor: Colors.black,
            title: const Text('Close Drawer'),
            leading: const Icon(Icons.close),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
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
              color: Colors.black,
            ),
          )
        ],
      )),
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        fixedColor: Colors.black,
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
