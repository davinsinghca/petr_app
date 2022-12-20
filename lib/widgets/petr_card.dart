// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class PetrCard extends StatefulWidget {
  const PetrCard({super.key});

  static final lineSpacing = 4.0;

  @override
  State<PetrCard> createState() => _PetrCardState();
}

class _PetrCardState extends State<PetrCard> {
  bool isLiked = false;
  int likes = 0;

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
                    'assets/images/petr.png',
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
            const Text(
              'Illenium Petr',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inter',
                  fontSize: 20),
            ),
            SizedBox(height: PetrCard.lineSpacing),
            const Text('2:00 PM'

                //we could do a time widget? i'll look that up
                ),
            SizedBox(height: PetrCard.lineSpacing),
            const Text('Today'),
            SizedBox(height: PetrCard.lineSpacing),
            const Text('@thepetrplug'),
            SizedBox(height: PetrCard.lineSpacing),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24.0,
                ),
                SizedBox(width: 10),
                Text("250"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
