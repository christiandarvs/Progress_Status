import 'package:flutter/material.dart';

final imageURL = [
  'images/image1.jpeg',
  'images/image2.jpeg',
  'images/image3.jpeg',
  'images/image4.webp',
  'images/image5.jpeg',
  'images/image6.jpeg',
  'images/image7.jpeg',
  'images/image8.webp',
  'images/image9.jpeg',
  'images/image10.jpeg',
  'images/image11.jpeg',
  'images/image12.jpg',
];

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F7FF),
      body: SafeArea(
          child: GridView.builder(
              itemCount: imageURL.length,
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: ((context, index) => ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Card(
                      child: Image.asset(
                        imageURL[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  )))),
    );
  }
}
