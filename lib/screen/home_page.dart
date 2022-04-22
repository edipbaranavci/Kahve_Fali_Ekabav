import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.mugHot,
          size: 150,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Hay Aksi..\n \n'
              'Listede hiç fal isteği bulunmuyor. \n'
              'Fincanını çevirip soğuttuktan sonra buradan falını gönderebilirsin.',
          style: Theme.of(context).textTheme.headline6,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
