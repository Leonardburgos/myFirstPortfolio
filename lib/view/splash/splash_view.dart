import 'dart:async';
import 'package:flutter/material.dart';
import 'package:leonard_portfolio/view/home/home.dart';

import 'package:video_player/video_player.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}
class _SplashViewState extends State<SplashView> {
late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(
      'assets/logo_video.mp4',
    )
      ..initialize().then((_) {
        setState(() {});
      })
      ..setVolume(0.0);

    _playVideo();
  }

  void _playVideo() async {
    // playing video
    _controller.play();

    // add delay till video is complete
    await Future.delayed(const Duration(seconds: 4));

    // navigating to home screen
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage(),));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: _controller.value.isInitialized
            ? Container(
                width: 250.0, // Adjust width as needed
                height: 250.0, // Adjust height as needed
                child: AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(
                    _controller,
                  ),
                ),
              )
            : Container(),
      ),
    );
  }
}
