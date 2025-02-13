import 'package:flutter/material.dart';
import '../Widgets/button.dart';
import '../widgets/hex_to_color.dart';
import '../widgets/vertical_write.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    Color textColor = hexToColor("#BFACE0");

    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight*0.13),
              SizedBox(
                height: screenHeight*0.1,
                child: Image.asset(
                  'assets/images/TOSC logo.png',
                  fit: BoxFit.fill
                ),
              ),
              SizedBox(height: screenHeight * 0.1),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: 'TECHKRITI', textColor: textColor),
                    SizedBox(height: screenHeight * 0.015),
                    CustomText(text: 'OPEN', textColor: textColor),
                    SizedBox(height: screenHeight * 0.015),
                    CustomText(text: 'SCHOOL', textColor: textColor),
                    SizedBox(height: screenHeight * 0.015),
                    CustomText(text: 'CHAMPIONSHIP', textColor: textColor),
                    SizedBox(height: screenHeight * 0.015),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.1),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth*0.08),
                child: Center(
                  child: Button(
                    text: 'EXPLORE',
                    onTap: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
