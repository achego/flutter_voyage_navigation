import 'package:biodata_page/screen_3.dart';
import 'package:biodata_page/utils/styles.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scxreen 2'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
           

            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Screen3(),
                ));
          },
          child: Text(
            'You have reached the Scxreen 2',
            style: AppStyles().heading(),
          ),
        ),
      ),
    );
  }
}
