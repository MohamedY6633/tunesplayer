import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class container extends StatelessWidget {
  const container({super.key, this.color, this.tuneSRC});
  final int? color;
  final String? tuneSRC;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 103,
      color: Color(color!),
      child: InkWell(onTap: () {
        final player = AudioPlayer();
        player.play(AssetSource(tuneSRC!));
      }
      ),
    );
  }
}
