import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:url_launcher/url_launcher.dart';
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
  void _launchURL() async {
    if (!await launch(link['Github'])) throw 'Could not launch ';
  }

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
                  // Call when you want the date time range picker to be shown

                  Text(
                    info['name'],
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
                    info['location'],
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
              child: ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: link.length,
                  itemBuilder: (context, snapshot) {
                    return ElevatedButton(
                        onPressed: _launchURL,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text('GitHub'), Icon(Icons.link)],
                        ));
                  })),
        ],
      ),
    );
  }

  String icon = 'password';
}
