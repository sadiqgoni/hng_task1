import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:project_flutter/index.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _simulateLoading();
  }

  void _simulateLoading() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorOne,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image.asset(height: 100, width: 100, 'lib/asset/image/hng_logo.jpeg'),
          CachedNetworkImage(
            height: 100,
            width: 100,
            progressIndicatorBuilder: (context, url, progress) => Center(
              child: CircularProgressIndicator(
                value: progress.progress,
              ),
            ),
            imageUrl:
                'https://pbs.twimg.com/profile_images/1698661699392319488/mqECftWG_400x400.jpg',
          ),
          const SizedBox(height: 20),
          const SpinKitFadingCube(
            color: Colors.white,
            size: 50.0,
          ),
        ],
      )),
    );
  }
}
