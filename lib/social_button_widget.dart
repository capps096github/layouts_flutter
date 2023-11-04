import 'exporter.dart';

class SocialButtonWidget extends StatelessWidget {
  const SocialButtonWidget({super.key, required this.icon, required this.label});

  final IconData icon;

  // label
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: const EdgeInsets.only(right: 8),
      decoration: const BoxDecoration(
        color: bac,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      // icon and text
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // icon
          Icon(
            icon,
            color: navy,
            size: 60,
          ),
          const Gap(4),
          // text
          Text(
            label,
            style: const TextStyle(
              color: navy,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
