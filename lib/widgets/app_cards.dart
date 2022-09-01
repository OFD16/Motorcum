import 'package:flutter/material.dart';
import 'package:motorcum/design/app_colors.dart';
import 'package:motorcum/design/app_texts.dart';

class AppCards{
  
  static Widget Brand ({
  required void Function()? onTap,
    required String imageUrl,
    required String brandName,
    required String count,
    
}){
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          const SizedBox(width: 10),
          Image.network(imageUrl.isNotEmpty ? imageUrl : 'https://e7.pngegg.com/pngimages/92/903/png-clipart-all-terrain-vehicle-side-by-side-scooter-motorcycle-ktm-logo-blue-text.png',
              width: 30,
              height: 30
          ),
          const SizedBox(width: 50),
          Text('$brandName ($count)', style: AppTexts.brandText,),
        ],
      ),
    );
  }

  static Widget ProcessType ({
    required void Function()? onTap,
    required String label,
    required IconData iconData,
  }){
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Icon(iconData, size: 30,),
          Text(label, style: AppTexts.label)
        ],
      ),
    );
  }

  static Widget MotoCard ({
    required void Function()? onTap,
    required String imageUrl,
    required String brandName,
    required String frameDate,
    required String price,
    required String location,
  }){
    return InkWell(
      onTap: onTap,
      child: Material(
        elevation: 2,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: AppColors.appWhite
          ),
          child: Row(
            children: [
              Image.network(imageUrl.isNotEmpty ? imageUrl : 'https://www.motosikletsitesi.com/wp-content/uploads/2019/08/2020-Suzuki-Hayabusa-Red.jpg', height: 150, width: 150),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(brandName, style: AppTexts.brandText),
                    Text(frameDate,style:  AppTexts.labelLightBlue),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(width: 90),
                        Text(price, style: AppTexts.buttonTextred),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined, color: AppColors.lightBlue),
                        Text(location, style:  AppTexts.labelLightBlue),
                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  static Widget ForumTitle ({
    required void Function()? onTap,
    required String mainTitle,
    required String answers,
    required String imageUrl,
    required String owner,
    required String date,
  }){
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Text(mainTitle, style: AppTexts.bigText)),
              const SizedBox(width: 20),
              Text(answers, style: AppTexts.bigTextLightBlue),
            ],
          ),
          Row(
            children: [
              Image.network(imageUrl.isNotEmpty ? imageUrl : 'https://www.pngkey.com/png/detail/950-9501315_katie-notopoulos-katienotopoulos-i-write-about-tech-user.png', height: 30, width: 30),
              Text(owner, style: AppTexts.label),
              const SizedBox(width: 20),
              Text(date, style: AppTexts.labelLightBlue),
            ],
          ),
          const Divider(thickness: 2),
        ],
      ),
    );
  }
}

