
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget gap(double height) {
  return SizedBox(height: height);
}

Widget gapHorizontal(double width) {
  return SizedBox(width: width);
}

Widget skillBadge(String skill, BuildContext context) {
  return Card(
    shape: const RoundedRectangleBorder(
      side: BorderSide(color: Colors.black, width: 2.0),
    ),
    child: SizedBox(
      width: 200,
      height: 100,
      child: Center(
          child: Text(skill, style: Theme.of(context).textTheme.titleLarge,)),
    ),
  );
}

Future<void> launchMyUrl(Uri url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

final Uri githubUri = Uri.parse('https://github.com/cyber111');
final Uri linkedInUri = Uri.parse('https://www.linkedin.com/in/pratik-jain-00610b147/');
final Uri gmailUri = Uri.parse('https://pjpratikjain7@gmail.com');
final Uri instagramUri = Uri.parse('https://flutter.dev');
final Uri resumeUri = Uri.parse('https://drive.google.com/file/d/1iSqb_ZhhqAr8c8Q4dbc3Tt-NT4s4odkM/view?usp=sharing');

const String introText =
    'a passionate and experienced mobile developer with four years of hands-on experience in creating innovative mobile applications. My journey in mobile development has been driven by a love for crafting intuitive and impactful digital solutions.';

const String welcomeText = 'Welcome to My Portfolio';

const String aboutMeText =
    'With a solid understanding of mobile application architecture and a knack for problem-solving, I have successfully developed numerous apps that resonate with users. My expertise spans across various domains, including: iOS and Android Development: Proficient in Swift, Kotlin, and Flutter, I bring ideas to life on both major platforms. UI/UX Design: I prioritize user experience, ensuring that every app is not only functional but also aesthetically pleasing. Performance Optimization: I focus on creating high-performance apps that deliver seamless user experiences. Backend Integration: Skilled in integrating robust backend services to support dynamic app features.';

const String work = 'Take a look at some of the projects I\'ve worked on:';

const imgLink1 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/Screenshot_20240625_175716.jpg';
const imgLink2 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/Screenshot_20240625_175721.jpg';
const imgLink3 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/Screenshot_20240625_180356.jpg';
const imgLink4 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/Screenshot_20240625_180409.jpg';
const imgLink5 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/Screenshot_20240625_180359.jpg';
const imgLink6 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/Screenshot_20240625_180409.jpg';
const imgLink7 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/Screenshot_1718769261.png';
const imgLink8 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/Screenshot_1718769268.png';

const miniImg0 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/mini_e(2).jpg';

const miniImg1 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/mini_e(3).jpg';
const miniImg2 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/mini_e(4).jpg';
const miniImg3 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/mini_e(5).jpg';
const miniImg4 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/mini_e(6).jpg';
const miniImg5 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/mini_e(7).jpg';
const miniImg6 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/mini_e(8).jpg';
const miniImg7 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/mini_e(9).jpg';

const DmImg1 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/dm(1).jpg';

const DmImg2 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/dm(2).jpg';

const DmImg3 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/dm(3).jpg';

const DmImg4 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/dm(4).jpg';

const SocialImg1 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/social_media(1).jpg';

const SocialImg2 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/social_media(2).jpg';

const SocialImg3 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/social_media(3).jpg';

const SocialImg4 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/social_media(4).jpg';

const SocialImg5 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/social_media(5).jpg';

const SocialImg6 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/social_media(6).jpg';

const SocialImg7 =
    'https://raw.githubusercontent.com/cyber111/social_media_app/master/lib/images/social_media(7).jpg';
