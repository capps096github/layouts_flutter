import 'exporter.dart';
import 'title_descritption.dart';

class TitleImage extends StatelessWidget {
  const TitleImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(
            "assets/images/cephas.png",
          ),
        ),
        Gap(20),
        TitleDescription(
          name: "Cephas",
          role: "Flutter Developer",
        ),
      ],
    );
  }
}
