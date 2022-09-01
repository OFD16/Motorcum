
import 'package:flutter/material.dart';
import 'package:motorcum/design/app_colors.dart';
import 'package:motorcum/design/app_texts.dart';
import 'package:motorcum/widgets/app_buttons.dart';
import 'package:motorcum/widgets/app_cards.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  final ScrollController _brandScroller = ScrollController();
  final ScrollController _typeScroller = ScrollController();
  String locationValue = 'İstanbul';
  var locationItems = [
    'İstanbul',
    'Kayseri',
    'Ankara',
  ];
  String dealerValue = 'TTS Motors';
  var dealerItems = [
    'TTS Motors',
    'Mondial Çarşı',
    'CF Motor',
  ];
  String yearValue = '2015';
  var yearItems = [
    '1950',
    '1960',
    '1970',
    '1980',
    '1990',
    '2000',
    '2010',
    '2015',
    '2020',
  ];
  String engineValue = '125';
  var engineItems = [
    '50',
    '125',
    '150',
    '200',
    '250',
    '300',
    '400',
    '500',
    '600',
    '700',
    '800',
    '900',
    '1000',
    '1100',
    '1200',
    '1200+',
  ];
  List<Map<String, dynamic>> brands = [
    {
      'imageUrl' : '',
      'brandName' : 'CF Motor',
      'count' : 7
    },
    {
      'imageUrl' : 'https://seeklogo.com/images/M/mondial-motor-logo-14551213FB-seeklogo.com.png',
      'brandName' : 'Mondial',
      'count' : 10
    },
    {
      'imageUrl' : 'https://w7.pngwing.com/pngs/635/851/png-transparent-honda-logo-car-motorcycle-honda-cb175-honda.png',
      'brandName' : 'Honda',
      'count' : 60
    },
    {
      'imageUrl' : 'https://flyclipart.com/thumb2/logo-suzuki-motor-png-png-image-382431.png',
      'brandName' : 'Suzuki',
      'count' : 5
    },
    {
      'imageUrl' : '',
      'brandName' : 'CF Motor',
      'count' : 7
    },
    {
      'imageUrl' : 'https://seeklogo.com/images/M/mondial-motor-logo-14551213FB-seeklogo.com.png',
      'brandName' : 'Mondial',
      'count' : 10
    },
    {
      'imageUrl' : 'https://w7.pngwing.com/pngs/635/851/png-transparent-honda-logo-car-motorcycle-honda-cb175-honda.png',
      'brandName' : 'Honda',
      'count' : 60
    },
    {
      'imageUrl' : 'https://flyclipart.com/thumb2/logo-suzuki-motor-png-png-image-382431.png',
      'brandName' : 'Suzuki',
      'count' : 5
    }
  ];

  List<String> types = [
    'Moped',
    'Naked',
    'Racing',
    'Commuter',
    'Cub',
    'Scooter / Maxi Scooter',
    'Touring',
    'Sport Touring'
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: AppColors.lightBlue,
                ),
                child: ListTile(
                  onTap: (){Navigator.pushNamed(context, 'forum_titles_screen');},
                  title: Text('Forum', style: AppTexts.brandText),
                ),
              ),
              const SizedBox(height: 10),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(height: 10),
              AppButtons.DropDownButton(
                  isBlue: false,
                  label: 'Konum',
                  value: locationValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      locationValue = newValue!;
                    });
                  },
                  items: locationItems.map((String locationItems) {
                    return DropdownMenuItem(
                      value: locationItems,
                      child: Text(locationItems),
                    );
                  }).toList()),
              AppButtons.DropDownButton(
                  isBlue: false,
                  label: 'Bayi',
                  value: dealerValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      dealerValue = newValue!;
                    });
                  },
                  items: dealerItems.map((String dealerItems) {
                    return DropdownMenuItem(
                      value: dealerItems,
                      child: Text(dealerItems),
                    );
                  }).toList()),
              const SizedBox(height: 10),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Markalar', style: AppTexts.buttonTextLightBlue,),
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                      color: AppColors.appWhite,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child:Scrollbar(
                      controller: _brandScroller,
                      thumbVisibility: true,
                      child:  ListView.builder(
                        controller: _brandScroller,
                          padding: const EdgeInsets.all(10),
                          shrinkWrap: true,
                          itemCount: brands.length,
                          itemBuilder: (BuildContext context, int index) {
                            return AppCards.Brand(
                              onTap: (){print('marka seçildi $index');},
                              brandName: brands[index]['brandName'],
                              imageUrl: brands[index]['imageUrl'],
                              count: brands[index]['count'].toString(),
                            );
                          }
                      ),
                    )
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Tipi', style: AppTexts.buttonTextLightBlue,),
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                      color: AppColors.appWhite,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Scrollbar(
                      controller: _typeScroller,
                      thumbVisibility: true,
                      child: ListView.builder(
                        controller: _typeScroller,
                          padding: const EdgeInsets.all(10),
                          shrinkWrap: true,
                          itemCount: types.length,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: (){print('tip seçildi $index');},
                              child: Row(
                                children: [
                                  Text(types[index], style: AppTexts.brandText)
                                ],
                              ),
                            );
                          }
                      ),
                    ),
                  )
                ],
              ),
              AppButtons.DropDownButton(
                  isBlue: false,
                  label: 'Yıl',
                  value: yearValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      yearValue = newValue!;
                    });
                  },
                  items: yearItems.map((String yearItems) {
                    return DropdownMenuItem(
                      value: yearItems,
                      child: Text(yearItems),
                    );
                  }).toList()),
              AppButtons.DropDownButton(
                  isBlue: false,
                  label: 'Motor Hacmi',
                  value: engineValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      engineValue = newValue!;
                    });
                  },
                  items: engineItems.map((String engineItems) {
                    return DropdownMenuItem(
                      value: engineItems,
                      child: Text(engineItems),
                    );
                  }).toList()),
            ],
          ),
        )
    );
  }
}
