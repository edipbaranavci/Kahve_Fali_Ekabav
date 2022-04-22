import 'package:flutter/material.dart';
import 'package:kahvefali/custom_widgets.dart';
import 'package:kahvefali/strings.dart';

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        StorePageListItems(
          imagePath: ResimYollari.homeScreenCupPhoto,
          title: 'Günlük Bedava 200 Kredi',
          subTitle:
          '*Aynı gün içerisinde kullanılmayan hak ertesi güne devretmez',
          buttonTitle: 'Ücretsiz',
        ),
        StorePageListItems(
          imagePath: ResimYollari.homeScreenCupPhoto,
          title: 'Video İzle Kredi Kazan',
          subTitle:
          'İzlediğin her video için 10 kredi hesabında',
          buttonTitle: 'Kredi Kazan',
        ),
        StorePageListItems(
          imagePath: ResimYollari.homeScreenCupPhoto,
          title: '50 Kredi',
          subTitle:
          '50 Kredi \n'
              'Reklamları kaldırır',
          buttonTitle: '2,99₺',
        ),
        StorePageListItems(
          imagePath: ResimYollari.homeScreenCupPhoto,
          title: '125 Kredi',
          subTitle:
          '%6 İndirimli \n'
              'Reklamları kaldırır',
          buttonTitle: '6,99₺',
        ),
        StorePageListItems(
          imagePath: ResimYollari.homeScreenCupPhoto,
          title: '250 Kredi',
          subTitle:
          '%13 İndirimli \n'
              'Reklamları kaldırır',
          buttonTitle: '12,99₺',
        ),
        StorePageListItems(
          imagePath: ResimYollari.homeScreenCupPhoto,
          title: '450 Kredi',
          subTitle:
          '%25 İndirimli \n'
              'Reklamları kaldırır',
          buttonTitle: '19,99₺',
        ),
        StorePageListItems(
          imagePath: ResimYollari.homeScreenCupPhoto,
          title: '650 Kredi',
          subTitle:
          '%30 İndirimli \n'
              'Reklamları kaldırır',
          buttonTitle: '26,99₺',
        ),
        StorePageListItems(
          imagePath: ResimYollari.homeScreenCupPhoto,
          title: '950 Kredi',
          subTitle:
          '%38 İndirimli \n'
              'Reklamları kaldırır',
          buttonTitle: '34,99₺',
        ),
        StorePageListItems(
          imagePath: ResimYollari.homeScreenCupPhoto,
          title: '1650 Kredi',
          subTitle:
          '%50 İndirimli \n'
              'Reklamları kaldırır',
          buttonTitle: '49,99₺',
        ),

      ],
    );
  }
}
