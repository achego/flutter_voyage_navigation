import 'package:biodata_page/item_counter.dart';
import 'package:biodata_page/next_page.dart';
import 'package:biodata_page/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   icon: const Icon(Icons.arrow_back),
        // ),
        centerTitle: true,
        // titleTextStyle: TextStyle(fontSize: 16),
        title: const Text(
          "EMPLOYER'S PROFILE",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.chat_bubble_outline_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            // Container(
            //   color: const Color.fromARGB(255, 254, 236, 235),
            //   width: double.infinity,
            //   height: 60,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Container(
            //         color: Colors.yellow,
            //         child: IconButton(
            //           onPressed: () {},
            //           icon: const Icon(Icons.arrow_back),
            //         ),
            //       ),
            //       Container(
            //         color: Colors.green,
            //         child: const Text(
            //           "EMPLOYER'S PROFILE",
            //           style:
            //               TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            //         ),
            //       ),
            //       Container(
            //         color: Colors.blue,
            //         child: Row(

            //           children: [
            //             IconButton(
            //               onPressed: () {},
            //               icon: const Icon(Icons.chat_bubble_outline_rounded),
            //             ),
            //             IconButton(
            //               onPressed: () {},
            //               icon: const Icon(Icons.share),
            //             ),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),

            Container(
              width: 90,
              height: 90,
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(45),
                  bottomLeft: Radius.circular(45),
                  bottomRight: Radius.circular(12),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    spreadRadius: 0,
                  )
                ],
              ),
              child: const CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assets/images/Pst Charles.jpg'),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Enemuoh, Chukwuebuka Charles Leo',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'I am looking to improve my skills as a flutter mobile developer',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 8,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 18,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Awka, Anambra State, Nigeria',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ItemCounter(label: 'Posted', count: 4),
                ItemCounter(label: 'Applied', count: 0),
                ItemCounter(label: 'Finished', count: 0),
              ],
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NextPage(),
                          ));
                    },
                    child: Image.asset('assets/images/image_1.png')),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'No ratings and reviews yet!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'We need to collect few opinions\nbefore posting them',
              style: AppStyles().heading(),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
