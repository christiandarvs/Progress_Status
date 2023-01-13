import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              const CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(
                    'https://scontent.fmnl25-1.fna.fbcdn.net/v/t39.30808-1/306797224_154788703853657_4201603360433828675_n.jpg?stp=dst-jpg_p160x160&_nc_cat=105&ccb=1-7&_nc_sid=7206a8&_nc_eui2=AeH6HgZcyAlnBfPeuzh8-eADmZZNTvYgsJaZlk1O9iCwlsh-SxS7X5xIpTNSOJKQjhSpP7IerOMwFySZAioWJLTn&_nc_ohc=MPFatFO8POQAX-HrgAS&_nc_ht=scontent.fmnl25-1.fna&oh=00_AfAcb7KiO22Bdn65AbufvJfhr_qa-4ARQBIY7S7H61GPAw&oe=63C3E759'),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Christian Elijah Darvin',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Hi, I\'m Christian! Currently a 1st year BSCS student from DLSU-D. Also, I\'m a content creator on TikTok that creates Programming related videos. I like to play video games, but for now, I\'ll spend my time learning Flutter.',
                  style: TextStyle(fontSize: 16, letterSpacing: 1),
                  textAlign: TextAlign.justify,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Someday, I will become a Software Engineer - Flutter Developer!',
                  style: TextStyle(fontSize: 16, letterSpacing: 1),
                  textAlign: TextAlign.justify,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
              ),
              const Text(
                'Known Programming Languages:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'Java',
                    style: TextStyle(fontSize: 16, letterSpacing: 1),
                  ),
                  Text(
                    'Dart',
                    style: TextStyle(fontSize: 16, letterSpacing: 1),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'Kotlin',
                    style: TextStyle(fontSize: 16, letterSpacing: 1),
                  ),
                  Text(
                    'C#',
                    style: TextStyle(fontSize: 16, letterSpacing: 1),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'C++',
                    style: TextStyle(fontSize: 16, letterSpacing: 1),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
              ),
              const Text(
                'Favorite Life Quote:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  '"Sacrifice a few years of comfort for decades of freedom."',
                  style: TextStyle(fontSize: 16, letterSpacing: 1),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
