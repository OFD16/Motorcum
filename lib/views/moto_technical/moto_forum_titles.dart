
import 'package:flutter/material.dart';
import 'package:motorcum/design/app_colors.dart';
import 'package:motorcum/design/app_texts.dart';

class MotoForumTitles extends StatefulWidget {
  const MotoForumTitles({Key? key}) : super(key: key);

  @override
  State<MotoForumTitles> createState() => _MotoForumTitlesState();
}

class _MotoForumTitlesState extends State<MotoForumTitles> {
  List<Map> titles = [
    {
     "imageUrl" : "",
     "brand" : "Mondial",
      "model" : "MR Vulture 125i",
      "type" : "Commuter",
      "owner" : "FanMondial",
      "date" : "02/08/2022 14:34",
      "lastSender" : "Ahmet38",
      "answerCount" : 10,
    },
    {
      "imageUrl" : "https://www.cfmoto.com.tr/uploads/product/touring/150-nk/FuXoFi46RCGOED_prop.png",
      "brand" : "CFMoto",
      "model" : "150NK",
      "type" : "Naked",
      "owner" : "CFaHMET",
      "date" : "02/07/2022 14:34",
      "lastSender" : "aySE488",
      "answerCount" : 5,
    },
    {
      "imageUrl" : "",
      "brand" : "Honda",
      "model" : "CBR250RR SP",
      "type" : "Racing",
      "owner" : "CBRMehmet",
      "date" : "02/08/2022 00:00",
      "lastSender" : "sane",
      "answerCount" : 60,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: titles.length,
        itemBuilder: (BuildContext context, int index){
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: AppColors.darkBlue),
                ),
                child: ListTile(
                  leading: Image.network(titles[index]["imageUrl"].isNotEmpty ? titles[index]["imageUrl"] : 'https://www.kubamotor.com.tr/upload/urunler/thumb/cita-100r-20220107-075920-1.png', height: 40, width: 40,),
                  title: Text('${titles[index]["brand"]} ${titles[index]["model"]}', style: AppTexts.forumSubBig),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Konuyu Açan: ${titles[index]["owner"]} ${titles[index]["date"]}', style: AppTexts.forumSub),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text('Son Mesaj: ${titles[index]["lastSender"]}', style: AppTexts.forumSubBig),
                        Text('Cevaplar: ${titles[index]["answerCount"].toString()}', style: AppTexts.forumSubBig),
                      ],)
                    ],
                  )
                ),
              ),
              SizedBox(height: 10),
            ],
          );
        });
  }
}
