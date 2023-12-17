import 'package:ecommerce/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 174, 173, 174),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image.asset(
                    'lib/images/fun.jpg',
                    height: 250,
                  ),
                ),
                const SizedBox(height: 50),
                //title
                const Text(
                  'Just do it',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Brand new Sneakers and custom kicks made with premium quality',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 242, 241, 241),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 48),

                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      )),
                  child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 50, 41, 41),
                          borderRadius: BorderRadius.circular(15)),
                      padding: const EdgeInsets.all(25),
                      child: const Center(
                        child: const Text(
                          'Shop Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
