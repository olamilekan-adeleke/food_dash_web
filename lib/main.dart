import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_dash_web/cores/components/custom_button.dart';
import 'package:food_dash_web/cores/components/custom_text_widget.dart';
import 'package:food_dash_web/cores/constants/color.dart';
import 'package:food_dash_web/cores/utils/sizer_utils.dart';
import 'package:sizer/sizer.dart';
import 'dart:html' as html;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (_, __, ___) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Jolobbie',
        theme: ThemeData(primaryColor: kcPrimaryColor),
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomTextWidget(
          text: 'Jolobbi',
          textColor: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: sizerSp(18),
        ),
      ),
      body: Scrollbar(
        child: ListView(
          children: [
            SizedBox(height: sizerSp(20)),
            Head(),
            SizedBox(height: sizerSp(10)),
            Body(),
            SizedBox(height: sizerSp(10)),
            Footer(),
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: sizerSp(20)),
      child: Column(
        children: <Widget>[
          item(
            'assets/images/healthy.svg',
            'Order your favourite food from your favourite restaurants',
            'Sign up as a customer',
          ),
          SizedBox(height: sizerSp(10)),
          item(
            'assets/images/analytics.svg',
            'Reach more customers faster ',
            'Sign up as a merchant',
          ),
          SizedBox(height: sizerSp(10)),
          item(
            'assets/images/On_the_way.svg',
            'Earn money delivering food to customers',
            'Sign up as a rider',
          ),
          SizedBox(height: sizerSp(10)),
        ],
      ),
    );
  }

  Widget item(String image, String title, String subTitle) {
    return Column(
      children: <Widget>[
        SvgPicture.asset(
          image,
          height: sizerSp(100),
          width: sizerSp(120),
        ),
        SizedBox(height: sizerSp(10)),
        CustomTextWidget(
          text: title,
          fontSize: sizerSp(15),
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.center,
        ),
        CustomTextWidget(
          text: subTitle,
          fontSize: sizerSp(12),
          fontWeight: FontWeight.w200,
          textAlign: TextAlign.center,
          textColor: kcPrimaryColor,
        ),
      ],
    );
  }
}

class Head extends StatelessWidget {
  const Head({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, _, DeviceType deviceType) {
        if (deviceType == DeviceType.mobile) {
          return Container(
            child: null,
          );
        } else if (deviceType == DeviceType.web) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: sizerSp(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(sizerSp(5)),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kcPrimaryColor,
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: sizerSp(80),
                      width: sizerSp(80),
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(sizerSp(100)),
                        child: Image.network(
                          'https://img.buzzfeed.com/thumbnailer-prod-us-east-1/42788e49474248dba75fdfd47114024a/BFV43575_PartyRiceAroundAfrica-FB-V2.jpg?output-format=auto&output-quality=auto',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(sizerSp(5)),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kcPrimaryColor,
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: sizerSp(10)),
                CustomTextWidget(
                  text: 'Order breakfast,\nlaunch and dinner.',
                  fontSize: sizerSp(18),
                  fontWeight: FontWeight.bold,
                ),
                CustomTextWidget(
                  text: 'Find food you love from favourite restaurants....',
                  fontSize: sizerSp(11),
                  fontWeight: FontWeight.w200,
                ),
                SizedBox(height: sizerSp(10)),
                Container(
                  width: sizerWidth(35),
                  child: CustomButton(
                    text: 'Get App',
                    onTap: () => downloadFile(),
                  ),
                ),
                SizedBox(height: sizerSp(20)),
                Center(
                  child: CustomTextWidget(
                    text: 'There is more to love in the app',
                    fontSize: sizerSp(16),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          );
        }

        return Container();
      },
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.symmetric(
        horizontal: sizerSp(20),
        vertical: sizerSp(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomTextWidget(
                text: 'Jolobbie',
                textColor: Colors.white,
                fontSize: sizerSp(15),
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
          SizedBox(height: sizerSp(20)),
          Row(
            children: [
              CustomTextWidget(
                text: 'Get the App',
                textColor: Colors.white,
                fontSize: sizerSp(15),
                fontWeight: FontWeight.w700,
              ),
              SizedBox(width: sizerSp(30)),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: sizerSp(10),
                  vertical: sizerSp(3.0),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(sizerSp(15.0)),
                ),
                child: GestureDetector(
                  onTap: () => downloadFile(),
                  child: Row(
                    children: <Widget>[
                      FaIcon(
                        FontAwesomeIcons.googlePlay,
                        color: Colors.white,
                        size: 15,
                      ),
                      SizedBox(width: sizerSp(10)),
                      CustomTextWidget(
                        text: 'Google Play',
                        textColor: Colors.white,
                        fontSize: sizerSp(12),
                        fontWeight: FontWeight.w200,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: sizerSp(10)),
          CustomTextWidget(
            text: 'About Jolobbi',
            textColor: Colors.white,
            fontSize: sizerSp(12),
            fontWeight: FontWeight.w200,
          ),
          SizedBox(height: sizerSp(10)),
          CustomTextWidget(
            text: 'Privacy policy',
            textColor: Colors.white,
            fontSize: sizerSp(12),
            fontWeight: FontWeight.w200,
          ),
          SizedBox(height: sizerSp(10)),
          CustomTextWidget(
            text: 'Terms and agreement',
            textColor: Colors.white,
            fontSize: sizerSp(12),
            fontWeight: FontWeight.w200,
          ),
          SizedBox(height: sizerSp(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FaIcon(FontAwesomeIcons.facebook, color: Colors.white),
              FaIcon(FontAwesomeIcons.twitter, color: Colors.white),
              FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
            ],
          ),
          SizedBox(height: sizerSp(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextWidget(
                text: 'Developed by KOD-X',
                textColor: Colors.white,
                fontSize: sizerSp(8),
                fontWeight: FontWeight.w200,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void downloadFile() {
  String url =
      'https://firebasestorage.googleapis.com/v0/b/food-dash-4f8d6.appspot.com/o/apk%2Fapp-release.apk?alt=media&token=d68f3b45-a071-4a55-b4b3-420c98d565b8';
  html.AnchorElement anchorElement = new html.AnchorElement(href: url);
  anchorElement.download = url;
  anchorElement.click();
}
