import 'package:flutter/material.dart';
import 'package:motorcum/design/app_colors.dart';
import 'package:motorcum/design/app_texts.dart';
import 'package:motorcum/widgets/app_buttons.dart';
import 'package:motorcum/widgets/app_forms.dart';
import 'package:provider/provider.dart';

import '../states/states.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  List<bool> isSelected = [true, false];
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _birthdayController = TextEditingController();

  String genderValue = 'Erkek';
  var genderItems = [
    'Erkek',
    'Kız',
  ];
  String locationValue = 'İstanbul';
  var locationItems = [
    'İstanbul',
    'Kayseri',
    'Ankara',
  ];

  @override
  Widget build(BuildContext context) {
    Function setIndexTabBar = Provider.of<States>(context).setIndexTabBar;
    int indexTabBar = Provider.of<States>(context).indexTabBar;

    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(50),
          children: [
            Image.asset('assets/images/motorcum_logo.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setIndexTabBar(0);
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(10),
                    backgroundColor: indexTabBar == 0
                        ? AppColors.appBlue
                        : AppColors.lightBlue,
                    side: BorderSide(color: AppColors.darkBlue),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                      ),
                    ),
                  ),
                  child: Text('Giriş Yap',
                      style: AppTexts.buttonText),
                ),
                TextButton(
                  onPressed: () {
                    setIndexTabBar(1);
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(10),
                    backgroundColor: indexTabBar == 1
                        ? AppColors.appBlue
                        : AppColors.lightBlue,
                    side: BorderSide(color: AppColors.darkBlue),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                    ),
                  ),
                  child:
                  Text('Kaydol', style: AppTexts.buttonText),
                ),
              ],
            ),
            const SizedBox(height: 50),
            indexTabBar == 0
                ? Column(
              children: [
                AppForms.TextField(label: 'Kullanıcı Adı', controller: _userNameController),
                const SizedBox(height: 20),
                AppForms.TextField(label: 'Şifre', controller: _passwordController),
                const SizedBox(height: 20),
                ElevatedButton(onPressed: (){Navigator.pushReplacementNamed(context, 'home_screen');}, child: Text('Giriş Yap', style: AppTexts.buttonText,))
              ],
            )
                : Column(
              children: [
                AppForms.TextField(label: 'Kullanıcı Adı', controller: _userNameController),
                const SizedBox(height: 20),
                AppForms.TextField(label: 'Şifre', controller: _passwordController),
                const SizedBox(height: 20),
                AppForms.TextField(label: 'Email', controller: _emailController),
                const SizedBox(height: 20),
                AppForms.TextField(label: 'Doğum Tarihi', controller: _birthdayController),
                const SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppButtons.DropDownButton(isExpanded: false,label: 'Cinsiyet', value: genderValue, items: genderItems.map((String locationItems) {
                        return DropdownMenuItem(
                          value: locationItems,
                          child: Text(locationItems),
                        );
                      }).toList(),
                        onChanged: (String? newValue) {
                        setState(() {
                          genderValue = newValue!;
                        });
                      },),
                  const SizedBox(width: 20),
                      AppButtons.DropDownButton(isExpanded: false,label: 'Şehir', value: locationValue, items: locationItems.map((String locationItems) {
                        return DropdownMenuItem(
                          value: locationItems,
                          child: Text(locationItems),
                        );
                      }).toList(), onChanged: (String? newValue) {
                        setState(() {
                          locationValue = newValue!;
                        });
                      },),
                ]),
                const SizedBox(height: 20),
                ElevatedButton(onPressed: (){Navigator.pushReplacementNamed(context, 'home_screen');}, child: Text('Kaydol', style: AppTexts.buttonText,))
              ],
            ),
          ],
        )
      ),
    );
  }
  @override
  void dispose(){
    _userNameController.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    _birthdayController.dispose();
    super.dispose();
  }
}

