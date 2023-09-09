import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_flutter/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Column(
          children: [
            const HomeBar(),
            const SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: colorOne,
                  width: 3.0,
                ),
              ),
              child:
                  // const CircleAvatar(
                  //     radius: 120,
                  //     backgroundImage:
                  // AssetImage('lib/asset/image/slack_profile.jpeg'))
                  CachedNetworkImage(
                      imageUrl:
                          'https://ca.slack-edge.com/T05FFAA91JP-U05RERFASCE-f482ea3186c7-512',
                      placeholder: (context, url) => CircleAvatar(
                            backgroundColor: colorThree,
                            radius: 150,
                          ),
                      imageBuilder: (context, image) => CircleAvatar(
                            backgroundImage: image,
                            radius: 150,
                          )),
            ),
            const SizedBox(height: 40),
            Text(
              'Sadiq Goni',
              style: GoogleFonts.concertOne(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 60),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const WebViewContainer();
                }));
              },
              child: Container(
                width: 200,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: colorOne,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Open GitHub',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
