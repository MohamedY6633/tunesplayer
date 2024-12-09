import 'package:flutter/material.dart';
import 'package:tunesplayer/components/container.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final List <container> sounds = [
      const container(
      color: 0xFF3D3BF3,
      tuneSRC: 'sounds/note1.wav',
    ),
      const container(
        color: 0xFFFF2929,
        tuneSRC: 'sounds/note2.wav',
      ),
      const container(
        color: 0xFFF26B0F,
        tuneSRC: 'sounds/note3.wav',
      ),
      const container(
        color: 0xFFE73879,
        tuneSRC: 'sounds/note4.wav',
      ),
      const container(
        color: 0xFFA7D477,
        tuneSRC: 'sounds/note5.wav',
      ),
      const container(
        color: 0xFF685752,
        tuneSRC: 'sounds/note6.wav',
      ),
      const container(
        color: 0xFF1230AE,
        tuneSRC: 'sounds/note7.wav',
      ),
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0x0ebeafff),
          title: const Row(
            children: [
              Text(
                'Tunes App',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'YujiMai-Regular',
                ),
              ),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: sounds.length,
          itemBuilder: (context, index) {
            return sounds[index];
          },
        ),
    );

  }
}
