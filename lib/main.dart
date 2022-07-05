import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

void main() => runApp(const MaterialApp(
  home: Home(),
  debugShowCheckedModeBanner: false,
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body:
        Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FeatherIcons.home,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 40),
                  Icon(
                    FeatherIcons.user
                  ),
                  SizedBox(width: 40),
                  Icon(
                    FeatherIcons.settings,
                    color: Colors.grey
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/profile.webp',
                    ),
                    radius: 40,
                  ),
                  SizedBox(height: 40),
                  Text(
                    'John Doe',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'MontserratSemibold',
                      fontWeight: FontWeight.w600,
                      fontSize: 20
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30.0, 
                      right: 30.0
                    ),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis viverra neque diam commodo.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        height: 1.6
                      ),
                    ),
                  ),
                  SizedBox(height: 60),
                  Text(
                    'Uploaded Images',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16
                    ),
                  ),
                  SizedBox(height: 60),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1516527653392-602455dd9cf7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1167&q=80',
                      height: 120,
                      width: 200,
    
                    ),
                  ),
                ]
              )
            ],
        )
      ),
    );
  }
}