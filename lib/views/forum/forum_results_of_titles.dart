import 'package:flutter/material.dart';
import 'package:motorcum/design/app_texts.dart';
import 'package:motorcum/widgets/app_cards.dart';

class ForumResults extends StatefulWidget {
  const ForumResults({Key? key}) : super(key: key);

  @override
  State<ForumResults> createState() => _ForumResultsState();
}

class _ForumResultsState extends State<ForumResults> {
  String? brand = 'Mondial';
  String? model = 'MR Vulture 125i';
  String? type = 'Commuter';
  List<Map> titles = [
    {
      "mainTitle" : "2022 Model Mondial Vulture 125i kronik sıkıntıları",
      "answers" : 10,
      "userImage" : "",
      "owner" : "Abdulkadir Eyigül",
      "date" : "02/08/2022 14:25",
    },
    {
      "mainTitle" : "2022 Model Mondial Vulture 125i kronik sıkıntıları",
      "answers" : 10,
      "userImage" : "",
      "owner" : "Abdulkadir Eyigül",
      "date" : "02/08/2022 14:25",
    },
    {
      "mainTitle" : "2022 Model Mondial Vulture 125i kronik sıkıntıları",
      "answers" : 10,
      "userImage" : "",
      "owner" : "Abdulkadir Eyigül",
      "date" : "02/08/2022 14:25",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('MotoForum', style: AppTexts.buttonText),
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.star_border_outlined)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
            ],
          ),
          body: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              Text('$brand > $model > $type', style: AppTexts.label),
              Text('Başlıklar', style: AppTexts.bigText),
              const Divider(thickness: 2),
              ListView.builder(
                shrinkWrap: true,
                itemCount: titles.length,
                itemBuilder: (BuildContext context, int index){
                return AppCards.ForumTitle(
                    onTap: (){},
                    mainTitle: titles[index]["mainTitle"],
                    answers: titles[index]["answers"].toString(),
                    imageUrl: titles[index]["userImage"],
                    owner: titles[index]["owner"],
                    date: titles[index]["date"],
                );
              },
              )
            ],
          )
    ));
  }
}
