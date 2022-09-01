import 'package:flutter/material.dart';
import 'package:motorcum/design/app_colors.dart';
import 'package:motorcum/design/app_texts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:motorcum/states/states.dart';
import 'package:motorcum/views/moto_technical/moto_dealers.dart';
import 'package:motorcum/views/moto_technical/moto_forum_titles.dart';
import 'package:motorcum/views/moto_technical/moto_price.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class MotoDetails extends StatefulWidget {
  const MotoDetails({Key? key}) : super(key: key);

  @override
  State<MotoDetails> createState() => _MotoDetailsState();
}

class _MotoDetailsState extends State<MotoDetails> {
  int activeIndex = 0;
  final List<String> urlImages = [
    'https://www.motosikletsitesi.com/wp-content/uploads/2022/04/2022-Honda-CBR250-RR-SP.png',
    'https://img-s2.onedio.com/id-53ff117cb73bff096d056f51/rev-0/w-635/f-jpg/s-338a0c6f971fa69e751254d50f2f8c5d90034fa9.jpg',
    'https://img-s1.onedio.com/id-53ff119236947bc6114da903/rev-0/w-635/f-jpg/s-d6ffe2e4c4c78bba744ab8afa25cfc46e9fa6e18.jpg',
    'https://img-s3.onedio.com/id-53ff17b536947bc6114daa45/rev-0/w-635/f-jpg/s-ab47838080577fe36f788d51c280277808c54978.jpg',
    'https://img-s1.onedio.com/id-53ff120d17478d616c4d26b6/rev-0/w-635/f-jpg/s-f21d47a9e8313943051e42a2eeb95087621df44b.jpg',
    'https://img-s1.onedio.com/id-53ff12a30924516f6cb32f43/rev-0/w-635/f-jpg/s-6ff5d075b8052cd40ff93241523ebf5e5f4791ff.jpg',
    'https://img-s1.onedio.com/id-53ff12d3b73bff096d056f73/rev-0/w-635/f-jpg/s-9193b2027383378c272be27d2bd1e7e9e1ec191a.jpg',
  ];
  String? brand = 'Mondial';
  String? model = 'MR Vulture 125i';
  String? type = 'Commuter';

  final List<DataColumn> columns = const [
    DataColumn(label: Text('Teknik Özellikler')),
    DataColumn(label: Text('Teknik Özellikler')),

  ];
  final List<DataRow> rows = [
    DataRow(
      color: MaterialStateProperty.all(AppColors.lightBlue.withOpacity(0.1)),
        cells: [
      DataCell(Text('Motor:', style: AppTexts.label)),
      DataCell(Text('Tek Silindir, 4 Zamanlı', style: AppTexts.label)),
    ]),
    DataRow(
        color: MaterialStateProperty.all(AppColors.appBlue.withOpacity(0.1)),
        cells: [
          DataCell(Text('Silindir Hacmi(cm3):', style: AppTexts.label)),
          DataCell(Text('124', style: AppTexts.label)),
        ]),
    DataRow(
        color: MaterialStateProperty.all(AppColors.lightBlue.withOpacity(0.1)),
        cells: [
          DataCell(Text('Silindir Çapı ve Strol(mm):', style: AppTexts.label)),
          DataCell(Text('56.50 x 49.60', style: AppTexts.label)),
        ]),
    DataRow(
        color: MaterialStateProperty.all(AppColors.appBlue.withOpacity(0.1)),
        cells: [
          DataCell(Text('Max Tork:', style: AppTexts.label)),
          DataCell(Text('9.0N·m at 7500min-1', style: AppTexts.label)),
        ]),
    DataRow(
        color: MaterialStateProperty.all(AppColors.lightBlue.withOpacity(0.1)),
        cells: [
          DataCell(Text('Max Güç:', style: AppTexts.label)),
          DataCell(Text('8.0kW at 9000min-1', style: AppTexts.label)),
        ]),
    DataRow(
        color: MaterialStateProperty.all(AppColors.appBlue.withOpacity(0.1)),
        cells: [
          DataCell(Text('Şanzıman:', style: AppTexts.label)),
          DataCell(Text('Manuel / 5 Vites', style: AppTexts.label)),
        ]),
    DataRow(
        color: MaterialStateProperty.all(AppColors.lightBlue.withOpacity(0.1)),
        cells: [
          DataCell(Text('Debriaj Tipi:', style: AppTexts.label)),
          DataCell(Text('-', style: AppTexts.label)),
        ]),
    DataRow(
        color: MaterialStateProperty.all(AppColors.appBlue.withOpacity(0.1)),
        cells: [
          DataCell(Text('Soğutma Tipi:', style: AppTexts.label)),
          DataCell(Text('Hava Sogutma', style: AppTexts.label)),
        ]),
    DataRow(
        color: MaterialStateProperty.all(AppColors.lightBlue.withOpacity(0.1)),
        cells: [
          DataCell(Text('Yağlama Tipi:', style: AppTexts.label)),
          DataCell(Text('Yağ Pompasi', style: AppTexts.label)),
        ]),
    DataRow(
        color: MaterialStateProperty.all(AppColors.appBlue.withOpacity(0.1)),
        cells: [
          DataCell(Text('Ateşleme Tipi / Yakıt Sistemi:', style: AppTexts.label)),
          DataCell(Text('ECU', style: AppTexts.label)),
        ]),
    DataRow(
        color: MaterialStateProperty.all(AppColors.lightBlue.withOpacity(0.1)),
        cells: [
          DataCell(Text('Fren Tipi(Ön/Arka):', style: AppTexts.label)),
          DataCell(Text('(CBS) Disk / Disk', style: AppTexts.label)),
        ]),
    DataRow(
        color: MaterialStateProperty.all(AppColors.appBlue.withOpacity(0.1)),
        cells: [
          DataCell(Text('Lastik(Ön/Arka):', style: AppTexts.label)),
          DataCell(Text('90/90-17 : 130/70-17', style: AppTexts.label)),
        ]),
    DataRow(
        color: MaterialStateProperty.all(AppColors.lightBlue.withOpacity(0.1)),
        cells: [
          DataCell(Text('Yakıt Tankı Kapasitesi(L):', style: AppTexts.label)),
          DataCell(Text('18.0±0.5', style: AppTexts.label)),
        ]),
    DataRow(
        color: MaterialStateProperty.all(AppColors.appBlue.withOpacity(0.1)),
        cells: [
          DataCell(Text('Ağırlık(kg):', style: AppTexts.label)),
          DataCell(Text('130', style: AppTexts.label)),
        ]),
    DataRow(
        color: MaterialStateProperty.all(AppColors.lightBlue.withOpacity(0.1)),
        cells: [
          DataCell(Text('Max Yükleme Kapasitesi(kg):', style: AppTexts.label)),
          DataCell(Text('130', style: AppTexts.label)),
        ]),
    DataRow(
        color: MaterialStateProperty.all(AppColors.appBlue.withOpacity(0.1)),
        cells: [
          DataCell(Text('Boyutlar U-G-Y(mm):', style: AppTexts.label)),
          DataCell(Text('1993x750x1130', style: AppTexts.label)),
        ]),
    DataRow(
        color: MaterialStateProperty.all(AppColors.lightBlue.withOpacity(0.1)),
        cells: [
          DataCell(Text('Dingil Mesafesi(mm):', style: AppTexts.label)),
          DataCell(Text('1310', style: AppTexts.label)),
        ]),
    DataRow(
        color: MaterialStateProperty.all(AppColors.appBlue.withOpacity(0.1)),
        cells: [
          DataCell(Text('Rölanti:', style: AppTexts.label)),
          DataCell(Text('1500±100 min-1', style: AppTexts.label)),
        ]),
    DataRow(
        color: MaterialStateProperty.all(AppColors.lightBlue.withOpacity(0.1)),
        cells: [
          DataCell(Text('Sıkıştırma Oranı:', style: AppTexts.label)),
          DataCell(Text('9.5±0.1 : 1', style: AppTexts.label)),
        ]),
    DataRow(
        color: MaterialStateProperty.all(AppColors.lightBlue.withOpacity(0.1)),
        cells: [
          DataCell(Text('Kitapçığı İndir:', style: AppTexts.label)),
          DataCell(IconButton(onPressed: (){}, icon: Icon(Icons.download, color: AppColors.appBlue),)),
        ]),
  ];
  final int indexDetailsBar = 0;

  @override
  Widget build(BuildContext context) {
    Function setIndexDetailsBar = Provider.of<States>(context).setIndexDetailsBar;
    int indexDetailsBar = Provider.of<States>(context).indexDetailsBar;

    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('$brand $model', style: AppTexts.buttonText,),
        actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
              itemCount: urlImages.length,
              itemBuilder: (context, index, realIndex){
                final urlImage = urlImages[index];
                return Container(
                  decoration: BoxDecoration(
                    color: AppColors.lightBlue,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Image.network(urlImage, fit: BoxFit.cover),
                );
              },
              options: CarouselOptions(
                height: 200,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason){
                  setState(() {
                    activeIndex = index;
                  });
                },
              ),
            ),
            const SizedBox(height: 20),
            AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: urlImages.length,
              effect: WormEffect(
                  dotHeight: 7,
                  activeDotColor: AppColors.darkBlue
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('$brand > $model > $type', style: AppTexts.label)
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setIndexDetailsBar(0);
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    backgroundColor: indexDetailsBar == 0
                        ? AppColors.darkBlue
                        : AppColors.lightBlue,
                    side: BorderSide(color: AppColors.darkBlue),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                      ),
                    ),
                  ),
                  child: Text('Teknik Özellikler',
                      style: AppTexts.smallButtonText),
                ),
                TextButton(
                  onPressed: () {
                    setIndexDetailsBar(1);
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    backgroundColor: indexDetailsBar == 1
                        ? AppColors.darkBlue
                        : AppColors.lightBlue,
                    side: BorderSide(color: AppColors.darkBlue),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(0),
                        bottomLeft: Radius.circular(0),
                      ),
                    ),
                  ),
                  child: Text('Fiyat',
                      style: AppTexts.smallButtonText),
                ),
                TextButton(
                  onPressed: () {
                    setIndexDetailsBar(2);
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    backgroundColor: indexDetailsBar == 2
                        ? AppColors.darkBlue
                        : AppColors.lightBlue,
                    side: BorderSide(color: AppColors.darkBlue),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(0),
                        bottomLeft: Radius.circular(0),
                      ),
                    ),
                  ),
                  child: Text('Forum',
                      style: AppTexts.smallButtonText),
                ),
                TextButton(
                  onPressed: () {
                    setIndexDetailsBar(3);
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    backgroundColor: indexDetailsBar == 3
                        ? AppColors.darkBlue
                        : AppColors.lightBlue,
                    side: BorderSide(color: AppColors.darkBlue),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                    ),
                  ),
                  child: Text('Bayiler',
                      style: AppTexts.smallButtonText),
                ),
              ],
            ),
            const SizedBox(height: 10),
            indexDetailsBar == 0 ? FittedBox(child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
              ),
              child: DataTable(
                  headingRowHeight: 0,
                  columns: columns,
                  rows: rows),
            )) :
            (indexDetailsBar == 1 ? const MotoPrice() :
            (indexDetailsBar == 2 ? const MotoForumTitles() :
            const MotoDealers())),
          ],
        ),
      ),
    ));
  }
}
