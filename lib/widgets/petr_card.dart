// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../models/petr_sticker.dart';
import 'package:intl/intl.dart';
import '../utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class PetrCard extends StatefulWidget {
  const PetrCard({super.key});

  static final lineSpacing = 4.0; // make const

  @override
  State<PetrCard> createState() => _PetrCardState();
}

class _PetrCardState extends State<PetrCard> {
  bool isLiked = false;
  PetrSticker sticker = PetrSticker(
    name: 'Illenium Petr',
    creator: '@thepetrplug',
    dropTime: DateTime.parse('2022-12-21 06:30:00Z').toLocal(),
    numLikes: 69,
    imgPath: 'assets/images/petr.png',
    creatorLink: 'https://www.instagram.com/thepetrplug/',
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Center(
                  child: Image.asset(
                    sticker.imgPath,
                    scale: 5,
                  ),
                ),
                const Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 24.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: PetrCard.lineSpacing),
            Text(
              sticker.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Inter',
                fontSize: 20,
              ),
            ),
            SizedBox(height: PetrCard.lineSpacing),
            Text(DateFormat.jm().format(sticker.dropTime)),
            SizedBox(height: PetrCard.lineSpacing),
            Text(getFormattedDate(sticker.dropTime)),
            SizedBox(height: PetrCard.lineSpacing),
            InkWell(
              onTap: () async =>
                  await launchUrl(Uri.parse(sticker.creatorLink)),
              child: Text(
                sticker.creator,
                style: const TextStyle(color: Colors.blue),
              ),
            ),
            SizedBox(height: PetrCard.lineSpacing),
            Row(
              children: <Widget>[
                const Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24.0,
                ),
                const SizedBox(width: 10),
                Text('${sticker.numLikes}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
