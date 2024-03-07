import 'package:biodata_page/biodata_page.dart';
import 'package:biodata_page/screen_4.dart';
import 'package:biodata_page/screen_two.dart';
import 'package:biodata_page/utils/styles.dart';
import 'package:flutter/material.dart';

// [Screen 4] <==== user≈

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scxreen 3'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'You have reached the Scxreen 3',
              style: AppStyles().heading(),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const Screen4()),
                      (route) => false);
                },
                child: const Text('Go to home'))
          ],
        ),
      ),
    );
  }
}
