import 'package:flutter/material.dart';
import 'package:motorcum/design/app_texts.dart';
import 'package:motorcum/widgets/app_cards.dart';
import 'package:motorcum/design/app_colors.dart';
class ForumSearch extends StatefulWidget {
  const ForumSearch({Key? key}) : super(key: key);

  @override
  State<ForumSearch> createState() => _ForumSearchState();
}

class _ForumSearchState extends State<ForumSearch> {
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _searchTitleController = TextEditingController();
  final ScrollController _brandScroller = ScrollController();
  final ScrollController _titleScroller = ScrollController();
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
    },
  ];

  List<Map> titles = [
    {
      "imageUrl" : 'https://icon-library.com/images/motorcycle-icon-png/motorcycle-icon-png-28.jpg',
      "label" : "Motorlar - Özellikleri",
      "count" : 302,
    },
    {
      "imageUrl" : 'https://toppng.com/uploads/preview/repair-workshop-icon-png-repair-icon-115632417663vpofcmx20.png',
      "label" : "Tamir",
      "count" : 55,
    },
    {
      "imageUrl" : 'https://flyclipart.com/thumb2/racing-icons-download-free-png-and-vector-icons-unlimited-210203.png',
      "label" : "Motor Sporları",
      "count" : 5,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('MotoForum', style: AppTexts.buttonText),
      ),
      ///Burdaki Column gerekli çünkü iki tane kaydırmalı containerımız var
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                height: 310,
                decoration: BoxDecoration(
                    color: AppColors.lightBlue,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: AppColors.darkBlue)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Markalar', style: AppTexts.brandText),
                        SizedBox(
                          height: 30,
                          width: 200,
                          child: TextField(
                            controller: _searchController,
                            decoration: InputDecoration(
                                fillColor: AppColors.appWhite,
                                suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.search),)
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 230,
                      color: AppColors.lightBlue,
                      child: Scrollbar(
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
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(10),
                height: 310,
                decoration: BoxDecoration(
                    color: AppColors.lightBlue,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: AppColors.darkBlue)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Konular', style: AppTexts.brandText),
                        SizedBox(
                          height: 30,
                          width: 200,
                          child: TextField(
                            controller: _searchTitleController,
                            decoration: InputDecoration(
                                fillColor: AppColors.appWhite,
                                suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.search),)
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 230,
                      color: AppColors.lightBlue,
                      child: Scrollbar(
                        controller: _titleScroller,
                        thumbVisibility: true,
                        child:  ListView.builder(
                            controller: _titleScroller,
                            shrinkWrap: true,
                            itemCount: titles.length,
                            itemBuilder: (BuildContext context, int index){
                              return Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(color: AppColors.darkBlue),
                                      color: AppColors.appWhite
                                    ),
                                    child: ListTile(
                                      onTap: (){Navigator.pushNamed(context, 'forum_results_screen');},
                                      leading: Image.network(titles[index]["imageUrl"], width: 50,height: 50),
                                      title: Text(titles[index]["label"], style: AppTexts.brandText),
                                      trailing: Text(titles[index]["count"].toString(), style: AppTexts.brandText),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
