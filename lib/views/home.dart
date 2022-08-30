import 'package:flutter/material.dart';
import 'package:motorcum/desing/app_colors.dart';
import 'package:motorcum/desing/app_texts.dart';
import 'package:motorcum/widgets/app_cards.dart';
import 'package:motorcum/widgets/app_drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> motors = [
    {
      'imageUrl' : 'https://www.cfmoto.com.tr/uploads/product/touring/150-nk/FuXoFi46RCGOED_prop.png',
      'brandName' : 'CF Moto 150 NK',
      'frameDate' : 2021,
      'price' : 53.001,
      'location' : 'Ankara, Kızılay',
    },
    {
      //https://resim.epey.com/696853/m_mondial-vulture-i-125-2.png
      'imageUrl' : '',
      'brandName' : 'Mondial MR Vulture 125i',
      'frameDate' : 2022,
      'price' : 30.181,
      'location' : 'Kayseri, Melikgazi',
    },
    {
      'imageUrl' : 'https://www.motosikletsitesi.com/wp-content/uploads/2022/04/2022-Honda-CBR250-RR-SP.png',
      'brandName' : 'Honda CBR250RR SP',
      'frameDate' : 2022,
      'price' : 135.173,
      'location' : 'İstanbul, Üsküdar',
    },

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Motorcum'),
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.search))
            ],
          ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppCards.ProcessType(onTap: (){print('İşlem seçildi Filtrele');}, label: 'Filtrele', iconData: Icons.filter_alt_outlined),
              AppCards.ProcessType(onTap: (){print('İşlem seçildi Sırala');}, label: 'Sırala', iconData: Icons.sort_outlined),
              AppCards.ProcessType(onTap: (){print('İşlem seçildi En Yeniler');}, label: 'En Yeniler', iconData: Icons.local_fire_department_outlined),
              AppCards.ProcessType(onTap: (){print('İşlem seçildi En Popüler');}, label: 'En Popüler', iconData: Icons.star_border_outlined),
            ],
          ),
          const SizedBox(height: 30),
          ListView.builder(
            shrinkWrap: true,
            itemCount: motors.length,
              itemBuilder: (BuildContext context, int index){
            return AppCards.MotoCard(
                onTap: (){print('motor index $index');Navigator.pushNamed(context, 'moto_details_screen');},
                imageUrl: motors[index]['imageUrl'],
                brandName: motors[index]['brandName'],
                frameDate: motors[index]['frameDate'].toString(),
                price: '${motors[index]['price'].toString()} TL',
                location: motors[index]['location']);
          })
        ],
      ),
          drawer: const AppDrawer(),
    ));
  }
}
