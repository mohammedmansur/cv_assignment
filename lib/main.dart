import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'profile.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: CvPro(),
  ));
}

class CvPro extends StatefulWidget {
  const CvPro({Key? key}) : super(key: key);

  @override
  _CvProState createState() => _CvProState();
}

class _CvProState extends State<CvPro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 65,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.network(
                  'https://scontent.fbgw4-2.fna.fbcdn.net/v/t39.30808-6/242313960_3714210802137371_4781888415979393110_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=xYZOW4ge8pUAX_MPeVf&tn=JHfLiSCxoKF0f2iF&_nc_ht=scontent.fbgw4-2.fna&oh=00_AT8-wKDrj9LW-Ib4bQKwwEtoHERnpwGRCMPIiR-VX6tJhA&oe=61EBBDB7',
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 20,
                width: 120,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(
                      20,
                    ),
                  ),
                  color: Colors.blue,
                ),
                child: Column(
                  children: const [
                    Text(
                      "Looking For Job",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    toMap['name'],
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'CV',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    toMap['location'],
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              )
            ],
          ),
          const Divider(
            color: Colors.blue,
            thickness: 2,
            endIndent: 40,
            indent: 40,
          ),
          Container(
            height: 300,
            width: 300,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
