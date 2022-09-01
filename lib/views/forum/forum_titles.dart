
import 'package:flutter/material.dart';
import 'package:motorcum/design/app_colors.dart';
import 'package:motorcum/design/app_texts.dart';

class ForumTitles extends StatefulWidget {
  const ForumTitles({Key? key}) : super(key: key);

  @override
  State<ForumTitles> createState() => _ForumTitlesState();
}

class _ForumTitlesState extends State<ForumTitles> {
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
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Başlıklar', style: AppTexts.brandText),
                ListView.builder(
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
                          onTap: (){Navigator.pushNamed(context, 'forum_search_screen');},
                          leading: Image.network(titles[index]["imageUrl"], width: 50,height: 50),
                          title: Text(titles[index]["label"], style: AppTexts.brandText),
                          trailing: Text(titles[index]["count"].toString(), style: AppTexts.brandText),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  );
                })
              ],
            ),
          )
    ));
  }
}
