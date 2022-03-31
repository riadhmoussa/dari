import 'package:dari/config/app_colors.dart';
import 'package:dari/views/main/controllers/account_controller.dart';
import 'package:dari/widgets/setting_item.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final _controller = AccountController();

  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: AppColors.backgroundColor,
          child: SingleChildScrollView(
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 23, vertical: 12),
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(height: 5),
                      Material(
                        elevation: 2,
                        clipBehavior: Clip.antiAlias,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 25.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: [
                                    const SizedBox(
                                      height: 60,
                                    ),
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(22.5),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                "assets/profile_img.jpg"),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Moussa Riadh",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontFamily: 'SemiBold',
                                              fontSize: 16),
                                        ),
                                        Text(
                                          "riadhmoussa1177@gmail.com",
                                          style: TextStyle(
                                              fontFamily: 'Medium',
                                              fontSize: 10),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/notif_icon.png"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 23, vertical:0),
                child: Container(
                  margin: EdgeInsets.only(bottom: 23),
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius:
                          new BorderRadius.all(Radius.circular(10.0))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23, vertical: 12),
                    child: Container(
                      child: Column(
                        children: const [
                          SizedBox(height: 5),
                          SettingItem(
                            leftImage: 'assets/change_password_icon.png',
                            name: 'Changer mot de passe',
                            rightImage: '',
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 23),
                child: Container(
                  margin: EdgeInsets.only(bottom: 23),
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius:
                          new BorderRadius.all(Radius.circular(10.0))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23, vertical: 12),
                    child: Container(
                      child: Column(
                        children: const [
                          SizedBox(height: 5),
                          SettingItem(
                            leftImage: 'assets/about_us_icon.png',
                            name: 'À propos de nous',
                            rightImage: '',
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 23),
                child: Container(
                  margin: EdgeInsets.only(bottom: 23),
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius:
                          new BorderRadius.all(Radius.circular(10.0))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23, vertical: 12),
                    child: Container(
                      child: Column(
                        children: const [
                          SizedBox(height: 5),
                          SettingItem(
                            leftImage: 'assets/logout_icon.png',
                            name: 'Se déconnecter',
                            rightImage: '',
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
