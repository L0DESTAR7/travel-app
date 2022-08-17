import 'package:flutter/material.dart';
import 'package:tourisme_app_ma/const/color_const.dart';
import 'package:tourisme_app_ma/widgets/painters/web_icon_painter.dart';
import 'package:url_launcher/url_launcher.dart';


class WebsiteContainer extends StatelessWidget {

  final double width;
  final double height;
  final Uri websiteUrl = Uri(scheme: 'https',host: "www.google.com",);
  // TODO: Change this widget so that it accepts an adresse as a parameter, so that you can re-use it maybe?
  WebsiteContainer({Key? key, required this.width, required this.height,}) : super(key: key);

  Future<void> _launchInBrowser(Uri url) async{
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        _launchInBrowser(websiteUrl);
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.6),
          border: Border.all(
            color: Colors.white.withOpacity(0.9),
          ),
          borderRadius: BorderRadius.circular(1000000)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            WebIcon(width: width/10),
            SizedBox(
              width: width * 0.8,
              height: height,
              child: const FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  "Consulter le site-web. ",
                  style: TextStyle(
                    color: mainDarkColor,
                    fontFamily: "Michroma",
                    letterSpacing: 1.4,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
