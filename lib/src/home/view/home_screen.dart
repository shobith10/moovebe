import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:move_bus/src/components/styles/colors.dart';

class HomePage extends StatelessWidget {
  static const routName = '/home';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: primaryColor,
                      image: DecorationImage(
                          image: AssetImage('assets/images/bus.png'))),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 200,
                  width: 150,
                  child: Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: Image.asset('assets/images/driver.png')),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: blackclr,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '21 Bus Found',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          SizedBox(
            height: 10,
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade100),
                  height: 90,
                  child: Row(
                    children: [
                      Container(
                          height: 90,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6))),
                          child: Image.asset('assets/images/smallbus.png')),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 10),
                          Text('KSRTC'),
                          Text('KSRTC Swift Scania P-​series '),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.orange)),
                          onPressed: () {},
                          child: Text('Manage'))
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}
