import 'package:flutter/cupertino.dart';

import 'exporter.dart';
import 'mini_profile_btn.dart';
import 'model/social_button.dart';
import 'social_button_widget.dart';
import 'title_image.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 0,
              child: Image.asset(
                "assets/images/windows.jpg",
                // height: 200,
                // width: double.infinity,
                // fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              top: 150,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView(
                    children: [
                      // Title Image and Role
                      const TitleImage(),
                      const Gap(8),
                      // button

                      // Button
                      // Text button without an icon
                      // TextButton(
                      //   onPressed: () {},
                      //   style: TextButton.styleFrom(
                      //     foregroundColor: white,
                      //     backgroundColor: blue,
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(8),
                      //     ),
                      //   ),
                      //   child: const Padding(
                      //     padding: EdgeInsets.symmetric(vertical: 8.0),
                      //     child: Text("Add Contact"),
                      //   ),
                      // ),
                      const Gap(8),
                      // Text button with an icon
                      TextButton.icon(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: white,
                          backgroundColor: blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        icon: const Icon(Icons.add_circle),
                        label: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text("Add Contact"),
                        ),
                      ),

                      // row with two elevated buttons
                      const Gap(8),
                      const Row(
                        children: [
                          Expanded(
                            child: MiniProfileButton(
                              icon: Icons.qr_code_2,
                              text: "QR Code",
                            ),
                          ),
                          Gap(8),
                          Expanded(
                            child: MiniProfileButton(
                              icon: Icons.share_outlined,
                              text: "Share",
                            ),
                          ),
                        ],
                      ),
                      const Gap(16),
                      // social buttons
                      // using a for loop
                      // SingleChildScrollView(
                      //   scrollDirection: Axis.horizontal,
                      //   child: Row(
                      //     children: [
                      //       const Icon(Icons.call),
                      //       // for (final socialButton in socialButtons)
                      //       //   SocialButtonWidget(
                      //       //     icon: socialButton.icon,
                      //       //     label: socialButton.text,
                      //       //   ),

                      //       ...List.generate(
                      //         socialButtons.length,
                      //         (index) => SocialButtonWidget(
                      //           icon: socialButtons[index].icon,
                      //           label: socialButtons[index].text,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      const Gap(16),
                      // using a List.generate
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            socialButtons.length,
                            (index) => SocialButtonWidget(
                              icon: socialButtons[index].icon,
                              label: socialButtons[index].text,
                            ),
                          ),
                        ),
                      ),

                      const Gap(16),

                      //
                      Material(
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          tileColor: bac,
                          onTap: () {
                            // do something
                          },
                          //
                          title: const Text(
                            "60 tools for Freelancers",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      //
                      const Gap(16),
                      Material(
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          onTap: () {
                            // do something
                          },
                          //
                          title: const Text(
                            "Work",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                          subtitle: const Text(
                            "+ 123 456 789 10",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: navy,
                            ),
                          ),
                          trailing: const Icon(
                            CupertinoIcons.phone_circle_fill,
                            color: navy,
                          ),
                        ),
                      ),

                      //
                    ],
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
