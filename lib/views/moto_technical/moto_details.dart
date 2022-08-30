import 'package:flutter/material.dart';
import 'package:motorcum/desing/app_colors.dart';
import 'package:motorcum/desing/app_texts.dart';
import 'package:carousel_slider/carousel_slider.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mondial MR Vulture 125i', style: AppTexts.buttonText,),
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
                    child: Image.network(urlImage, fit: BoxFit.fill),
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
            )
          ],
        ),
      ),
    );
  }
}
