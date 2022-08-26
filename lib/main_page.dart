import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'main page',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text( 
              'MAIN PAGE',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/firstPage');
              },
              child: const Text(
                'Go to page 1',
              ),
            ),
          ),
        ],
      ),
    );
  }
}