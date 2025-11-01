import 'package:flutter/material.dart';

class secundLacture extends StatelessWidget {
  const secundLacture({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: CircleAvatar(
          radius: 140,
          backgroundColor: Colors.indigo,
          child: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/images/wallpaperflare.com_wallpaper.jpg",
            ),
            radius: 120,
          ),
        ),
      ),
    );
  }
}

