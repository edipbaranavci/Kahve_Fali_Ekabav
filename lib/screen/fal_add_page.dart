import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kahvefali/custom_widgets.dart';

class FallAddPage extends StatefulWidget {
  const FallAddPage({Key? key}) : super(key: key);

  @override
  State<FallAddPage> createState() => _FallAddPageState();
}

class _FallAddPageState extends State<FallAddPage> {
  int yasIndex = 0;
  String secilenCinsiyet = 'Kadın';
  String iliskiDurumu = 'Seçilmemiş';

  List<int> yaslar = [
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
    31,
    32,
    33,
    34,
    35,
    36
  ];

  List<String> iliskiDurumlari = [
    'Seçilmemiş',
    'Bekarım',
    'Evliyim',
    'Nişanlıyım',
    'Platonik',
    'İlişkisi Var',
    'İlişkisi Yok',
    'Ayrı Yaşıyor',
    'Boşanmış',
    'Yeni Ayrılmış',
    'Flört Halinde',
    'Dul'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        child: MaterialButton(
          height: 50,
          onPressed: () {},
          color: Colors.pink,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Text('Gönder',style: Theme.of(context)
              .textTheme
              .headline6,),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          iconSize: 40,
          color: Colors.pink,
          icon: const Icon(
            Icons.close,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              FallAddPageCameraIcons(),
              FallAddPageCameraIcons(),
              FallAddPageCameraIcons(),
            ],
          ),
          const FallAddPageCustomDivider(),
          FallAddPageLabelText(
            text: 'Ad Soyad',
          ),
          FallAddPageLabelText(
            text: 'Edip Baran AVCI',
          ),
          const FallAddPageCustomDivider(),
          FallAddPageLabelText(
            text: 'Yaş',
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: yaslar.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => setState(() {
                      yasIndex = yaslar[index];
                    }),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 35.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: yasIndex == yaslar[index]
                          ? Colors.pink
                          : Colors.transparent,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            '${yaslar[index]}',
                            style: yasIndex == yaslar[index]
                                ? Theme.of(context)
                                    .textTheme
                                    .headline5
                                    ?.copyWith(color: Colors.pink)
                                : Theme.of(context)
                                    .textTheme
                                    .headline5
                                    ?.copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          const FallAddPageCustomDivider(),
          FallAddPageLabelText(text: 'Cinsiyet'),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => setState(() {
                    secilenCinsiyet = 'Kadın';
                  }),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: secilenCinsiyet == 'Kadın'
                            ? Colors.pink
                            : Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Kadın',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: secilenCinsiyet == 'Kadın'
                                ? Colors.pink
                                : Colors.white,
                          ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: GestureDetector(
                    onTap: () => setState(() {
                      secilenCinsiyet = 'Erkek';
                    }),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: secilenCinsiyet == 'Erkek'
                              ? Colors.pink
                              : Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Erkek',
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              color: secilenCinsiyet == 'Erkek'
                                  ? Colors.pink
                                  : Colors.white,
                            ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const FallAddPageCustomDivider(),
          FallAddPageLabelText(text: 'İlişki Durumu'),
          Container(
            margin: const EdgeInsets.all(10),
            height: 50,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
                itemCount: iliskiDurumlari.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return iliskiDurumlari[index] == iliskiDurumu
                      ? GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.pink),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              iliskiDurumlari[index].toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(
                                    color: Colors.pink,
                                  ),
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () => setState(() {
                            iliskiDurumu = iliskiDurumlari[index].toString();
                          }),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              iliskiDurumlari[index].toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                        );
                }),
          ),
        ],
      ),
    );
  }
}
