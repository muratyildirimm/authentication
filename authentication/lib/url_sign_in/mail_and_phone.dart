import 'package:olacak/url_sign_in/custom_exception.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class YonlendirmeSayfasi extends StatefulWidget {
  const YonlendirmeSayfasi({super.key});

  @override
  State<YonlendirmeSayfasi> createState() => _YonlendirmeSayfasiState();
}

class _YonlendirmeSayfasiState extends State<YonlendirmeSayfasi> {
  ProjectTexts texts = ProjectTexts();
  @override
  Future<void> customLaunch(url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      CustomException();
    }
  }

  TextEditingController phoneController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${texts.appbarText}")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  "${texts.normalText}",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: () {
                    customLaunch("mailto:muratyildirimm495@gmail.com");
                  },
                  child: Text(
                    "${texts.mailText}",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextField(
                  controller: phoneController,
                  decoration: InputDecoration(hintText: "Phone"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                    onPressed: () {
                      customLaunch("tel:${phoneController.text}");
                    },
                    child: Text("${texts.phoneText}")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: () {
                    customLaunch("https://www.instagram.com/slagng/");
                  },
                  child: Text(
                    "Gelmemek için bin tane sebep saydim, ama ben yine sana geldim.",
                    style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black54,fontSize: 24),
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

class ProjectTexts {
  final String normalText = "Bize Ulasin";
  final String mailText = "Mail";
  final String phoneText = "Phone";
  final String appbarText = "Sign in";
}
