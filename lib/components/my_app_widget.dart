import 'package:flutter/material.dart';
import 'package:untitled/pages/utils.dart';

class MyAppWidget extends StatelessWidget {
  const MyAppWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.images,
    required this.openApp,
  });

  final String title;
  final String subTitle;
  final List<Widget> images;
  final Function()? openApp;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: Colors.black, width: 2.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 48.0),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                   title,
                   style: Theme.of(context).textTheme.displayMedium!.copyWith(fontWeight: FontWeight.bold),
                 ),
                 gap(16),
                 Text(
                   subTitle,
                   style: Theme.of(context).textTheme.titleLarge,
                   overflow: TextOverflow.ellipsis,
                   maxLines: 1,
                 ),
                 gap(16),
                 GestureDetector(
                   onTap: () {},
                   child: const Card(
                     shape: RoundedRectangleBorder(
                       side: BorderSide(color: Colors.black, width: 2.0),
                     ),
                     elevation: 2,
                     shadowColor: Colors.black12,
                     borderOnForeground: true,
                     child: Padding(
                       padding: EdgeInsets.all(16),
                       child: Text('Open App'),
                     ),
                   ),
                 )
               ],
                              ),
            ),
            gap(16),
            SizedBox(
                height: 550,
                child: ListView.builder(
                itemCount: images.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return images[index];
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
