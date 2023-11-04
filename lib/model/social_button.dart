import '../exporter.dart';

class SocialButton {
  // icon
  final IconData icon;

  // text
  final String text;

  SocialButton({required this.icon, required this.text});
}

// list of social buttons
final socialButtons = [
  SocialButton(
    icon: Ionicons.logo_instagram,
    text: "Instagram",
  ),
  SocialButton(
    icon: Ionicons.logo_twitter,
    text: "Twitter",
  ),
  SocialButton(
    icon: Ionicons.logo_youtube,
    text: "YouTube",
  ),
];
