import 'package:biodata_page/screen_two.dart';
import 'package:biodata_page/utils/styles.dart';
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Screen2(),
                ));
          },
          child: Text(
            'You have reached the next page',
            style: AppStyles().heading(),
          ),
        ),
      ),
    );
  }
}
