import 'package:flutter/material.dart';
import 'package:kahvefali/custom_widgets.dart';
import 'package:kahvefali/strings.dart';

class BurclarPage extends StatelessWidget {
  const BurclarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: GridView.count(
        physics: const BouncingScrollPhysics(),
        crossAxisCount: 2,
        children: [
          BurclarList(
            burcIsim: 'Koç',
            burcResimYolu: ResimYollari.burcKoc,
            burcTarih: '21 Mart - 20 Nisan',
          ),
          BurclarList(
            burcIsim: 'Boğa',
            burcResimYolu: ResimYollari.burcBoga,
            burcTarih: '21 Nisan - 21 Mayıs',
          ),
          BurclarList(
              burcIsim: 'İkizler',
              burcTarih: '22 Mayıs - 21 Haziran',
              burcResimYolu: ResimYollari.burcIkizler),
          BurclarList(
              burcIsim: 'Yengeç',
              burcTarih: '22 Haziran - 22 Temmuz',
              burcResimYolu: ResimYollari.burcYengec),
          BurclarList(
              burcIsim: 'Aslan',
              burcTarih: '23 Temmuz - 23 Ağustos',
              burcResimYolu: ResimYollari.burcAslan),
          BurclarList(
              burcIsim: 'Başak',
              burcTarih: '24 Ağustos - 22 Eylül',
              burcResimYolu: ResimYollari.burcBasak),
          BurclarList(
              burcIsim: 'Terazi',
              burcTarih: '23 Eylül - 23 Ekim',
              burcResimYolu: ResimYollari.burcTerazi),
          BurclarList(
              burcIsim: 'Akrep',
              burcTarih: '24 Ekim - 22 Kasım',
              burcResimYolu: ResimYollari.burcAkrep),
          BurclarList(
              burcIsim: 'Yay',
              burcTarih: '23 Kasım - 21 Aralık',
              burcResimYolu: ResimYollari.burcYay),
          BurclarList(
              burcIsim: 'Oğlak',
              burcTarih: '22 Aralık - 20 Ocak',
              burcResimYolu: ResimYollari.burcOglak),
          BurclarList(
              burcIsim: 'Kova',
              burcTarih: '21 Ocak - 18 Şubat',
              burcResimYolu: ResimYollari.burcKova),
          BurclarList(
              burcIsim: 'Balık',
              burcTarih: '19 Şubat - 20 Mart',
              burcResimYolu: ResimYollari.burcBalik),
        ],
      ),
    );
  }
}
