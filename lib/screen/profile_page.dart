// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kahvefali/strings.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(ResimYollari.profilePhotoPath),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 14,
              bottom: 14,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Adın Ne?',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  width: 180,
                  child: TextField(
                    enabled: false,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Edip Baran AVCI',
                    ),
                  ),
                )
              ],
            ),
          ),
          ProfilePageBodyItems(
            text: 'Doğum Tarihi',
          ),
          ProfilePageBodyItems(
            text: 'Cinsiyet',
          ),
          ProfilePageBodyItems(
            text: 'İlişki Durumu',
          ),
          ProfilePageBodyItems(
            text: 'İş Durumu',
          ),
          Card(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: const ListTile(
              leading: Icon(FontAwesomeIcons.facebook),
              title: Text('Facebook İle Devam Et'),
            ),
          ),
          Card(
            color: Colors.pink,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const[
                  SizedBox(),
                  Text('Bilgilerimi Güncelle'),
                  SizedBox()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfilePageBodyItems extends StatelessWidget {
  String text;
  ProfilePageBodyItems({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 14,
        bottom: 14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(fontWeight: FontWeight.w300),
          ),
          SizedBox(
            width: 100,
            child: MaterialButton(
              color: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              onPressed: () {},
              child: const Text('Seçiniz'),
            ),
          ),
        ],
      ),
    );
  }
}
