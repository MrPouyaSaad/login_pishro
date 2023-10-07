import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class WrongPass extends StatefulWidget {
  const WrongPass({super.key});

  @override
  State<WrongPass> createState() => _WrongPassState();
}

class _WrongPassState extends State<WrongPass> {
  late final _controller = VideoPlayerController.asset('assets/mim.mp4');
  @override
  void initState() {
    _controller.initialize();
    _controller.play();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(88),
                bottomRight: Radius.circular(88),
              ),
              child: VideoPlayer(_controller),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'در ورود به سیستم مشکل دارید؟',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    wordSpacing: -4,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'ما داریم زحمت میکشیم تا این فرایند را برای شما ساده تر کنیم.',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.white54,
                  ),
                ),
                const SizedBox(
                  height: 72,
                ),
                TextButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    minimumSize: const Size(double.infinity, 62),
                    maximumSize: const Size(double.infinity, 62),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: const EdgeInsets.all(0),
                    alignment: Alignment.center,
                  ),
                  child: const Text(
                    'بازگردانی رمز عبور',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 62),
                    maximumSize: const Size(double.infinity, 62),
                    side: const BorderSide(color: Colors.white, width: 1.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: const EdgeInsets.all(0),
                    alignment: Alignment.center,
                  ),
                  child: const Text(
                    'پشتیبانی',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          const Text(
            'pouya.code',
            textAlign: TextAlign.center,
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.white54),
          ),
        ],
      ),
    );
  }
}
