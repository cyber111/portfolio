import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:untitled/components/my_app_widget.dart';
import 'package:untitled/main.dart';
import 'package:untitled/pages/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedTextKit(
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TyperAnimatedText(
                      welcomeText,
                      textStyle: textTheme.displayLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      speed: const Duration(milliseconds: 70),
                    ),
                  ],
                ),
                gap(48),
                Text(
                  'Hi, I\'m Pratik Jain, ',
                  style: textTheme.displaySmall!.copyWith(fontWeight: FontWeight.bold),
                ),
                gap(16),
                Text(
                  introText,
                  style: textTheme.headlineMedium!.copyWith(),
                ),
                gap(16),
                Row(
                  children: [
                    IconButton(onPressed: () => launchMyUrl(linkedInUri), icon: const Icon(FeatherIcons.linkedin)),
                    IconButton(onPressed: () => launchMyUrl(githubUri), icon: const Icon(FeatherIcons.github)),
                  ],
                ),
                gap(32),
                GestureDetector(
                  onTap: () {
                    launchMyUrl(resumeUri);
                  },
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 2.0),
                    ),
                    elevation: 2,
                    shadowColor: Colors.black12,
                    borderOnForeground: true,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        'Resume',
                        style: textTheme.headlineSmall,
                      ),
                    ),
                  ),
                ),
                gap(32),
                Text(
                  'My Skills',
                  style: textTheme.displaySmall!.copyWith(fontWeight: FontWeight.bold),
                ),
                gap(16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    skillBadge('FLUTTER', context),
                    skillBadge('FIREBASE', context),
                    skillBadge('ReactJs', context),
                    skillBadge('ExpressJS', context),
                    skillBadge('MySQL', context),
                    skillBadge('MongoDB', context),
                  ]),
                ),
                gap(32),
                Text(
                  'My Work',
                  style: textTheme.displaySmall!.copyWith(fontWeight: FontWeight.bold),
                ),
                gap(16),
                MyAppWidget(
                  title: 'Expense Tracker',
                  subTitle: 'Easily sort and track your expenses with our apps.',
                  images: expenseTrackerImages,
                  openApp: () {},
                ),
                gap(16),
                MyAppWidget(
                  title: 'Mini Ecommerce App',
                  subTitle: 'Build your business app using this template.',
                  images: miniEcommerceImages,
                  openApp: () {},
                ),
                gap(16),
                MyAppWidget(
                  title: 'Minimal Social Media App',
                  subTitle: 'Social media with only one WALL.',
                  images: socialMediaImages,
                  openApp: () {},
                ),
                gap(16),
                MyAppWidget(
                  title: 'Quotes App',
                  subTitle: 'Motivation. [Quotes are generated in realtime using generative AI]',
                  images: dailyMotivationImages,
                  openApp: () {},
                ),
                gap(16),
                const Row(
                  children: [
                    Text(
                      'Made With Flutter',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.flutter_dash_outlined),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final expenseTrackerImages = [
  workImg(imgLink7),
  workImg(imgLink8),
  workImg(imgLink1),
  workImg(imgLink2),
  workImg(imgLink3),
  workImg(imgLink5)
];

final miniEcommerceImages = [
  workImg(miniImg1),
  workImg(miniImg2),
  workImg(miniImg3),
  workImg(miniImg6),
  workImg(miniImg7),
  workImg(miniImg0),
];
final dailyMotivationImages = [
  workImg(DmImg1),
  workImg(DmImg2),
  workImg(DmImg3),
  workImg(DmImg4),
];
final socialMediaImages = [
  workImg(SocialImg1),
  workImg(SocialImg2),
  workImg(SocialImg3),
  workImg(SocialImg4),
  workImg(SocialImg5),
  workImg(SocialImg6),
  workImg(SocialImg7),
];


Widget workImg(String imgUrl) {
  return Card(
    elevation: 10,
    shadowColor: Colors.black12,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    clipBehavior: Clip.hardEdge,
    child: Image.network(
      imgUrl,
      width: 250,
      height: 550,
      fit: BoxFit.fill,
    ),
  );
}
