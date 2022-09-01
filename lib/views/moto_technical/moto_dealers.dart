
import 'package:flutter/material.dart';
import 'package:motorcum/design/app_colors.dart';
import 'package:motorcum/design/app_texts.dart';

class MotoDealers extends StatefulWidget {
  const MotoDealers({Key? key}) : super(key: key);

  @override
  State<MotoDealers> createState() => _MotoDealersState();
}

class _MotoDealersState extends State<MotoDealers> {
  List<Map> titles = [
    {
      "imageUrl" : "",
      "dealer" : "TTS Motors",
      "dealerPhone" : "0850 123 55 70",
      "brand" : "Mondial",
      "model" : "MR Vulture 125i",
      "type" : "Commuter",
      "price" : 30.001,
    },
    {
      "imageUrl" : "https://www.cfmoto.com.tr/uploads/product/touring/150-nk/FuXoFi46RCGOED_prop.png",
      "dealer" : "TTS Motors",
      "dealerPhone" : "0850 123 55 70",
      "brand" : "Mondial",
      "model" : "MR Vulture 125i",
      "type" : "Commuter",
      "price" : 30.001,
    },
    {
      "imageUrl" : "",
      "dealer" : "TTS Motors",
      "dealerPhone" : "0850 123 55 70",
      "brand" : "Mondial",
      "model" : "MR Vulture 125i",
      "type" : "Commuter",
      "price" : 30.001,
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
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${titles[index]["dealer"]}', style: AppTexts.label),
                        Text('Fiyat: ${titles[index]["price"]} TL', style: AppTexts.labelAppBlue),
                      ],
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Motor: ${titles[index]["brand"]} ${titles[index]["model"]}', style: AppTexts.forumSub),
                        Text('Bayi Tel: ${titles[index]["dealerPhone"]}', style: AppTexts.forumSubBig),
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
