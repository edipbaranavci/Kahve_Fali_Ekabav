// ignore_for_file: must_be_immutable, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';


class StorePageListItems extends StatelessWidget {
  String imagePath;
  String title;
  String subTitle;
  String buttonTitle;
  StorePageListItems({
    required this.buttonTitle,
    required this.subTitle,
    required this.title,
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListTile(
            leading: Image.asset(
              imagePath,
              width: 70,
              height: 70,
            ),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title,style: Theme.of(context).textTheme.titleMedium,),
            ),
            subtitle: Text(subTitle,style: Theme.of(context).textTheme.bodyText2),
            trailing: MaterialButton(
              color: Colors.purple,
              minWidth: 100,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              onPressed: () {},
              child: Text(buttonTitle),
            )),
      ),
    );
  }
}


class BurclarList extends StatelessWidget {

  String burcResimYolu;
  String burcTarih;
  String burcIsim;

  BurclarList({
    required this.burcIsim,
    required this.burcTarih,
    required this.burcResimYolu,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(burcResimYolu,width: 75,height: 75,),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(burcIsim, style: Theme.of(context).textTheme.headline6,),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(burcTarih,style: Theme.of(context).textTheme.subtitle2,),
              ),
            ],)
      ),
    );
  }
}


class FallAddPageCameraIcons extends StatelessWidget {
  const FallAddPageCameraIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.pink)
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.camera_alt,size: 65,),
        ),
      ),
    );
  }
}



class FallAddPageCustomDivider extends StatelessWidget {
  const FallAddPageCustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: Container(
        height: 1,
        color: Colors.red,
      ),
    );
  }
}

class FallAddPageLabelText extends StatelessWidget {
  String text;
  FallAddPageLabelText({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Align(
        child: Text(
          text,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        alignment: Alignment.centerLeft,
      ),
    );
  }
}