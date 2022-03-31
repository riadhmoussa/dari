import 'package:dari/config/app_colors.dart';
import 'package:dari/config/app_styles.dart';
import 'package:dari/views/main/controllers/home_controller.dart';
import 'package:dari/views/models/Item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'filter_page.dart';

class HomePage extends StatefulWidget {
  final _controller = HomePageController();

  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Item> types = [];
  String selectedValue = "Mahdia";
  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Mahdia"),value: "Mahdia"),
      DropdownMenuItem(child: Text("Sfax"),value: "Sfax"),
      DropdownMenuItem(child: Text("Monastir"),value: "Monastir"),
      DropdownMenuItem(child: Text("Sousse"),value: "Sousse"),
    ];
    return menuItems;
  }


  @override
  void initState() {
    super.initState();
    types.add(Item("LOUER", false));
    types.add(Item("VENDRE", false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: AppColors.backgroundColor,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: const Icon(
                                Icons.search,
                                color: AppColors.blackColor,
                              ),
                              hintText: "Rechercher Annoncer",
                              hintStyle: AppStyles.neutralBlack14W5Style,
                              contentPadding:
                                  const EdgeInsets.fromLTRB(16, 13, 0, 13),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: AppColors.whiteColor, width: 2),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: AppColors.whiteColor, width: 1.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                gapPadding: 0.0,
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: AppColors.whiteColor, width: 1.5),
                              ),
                            ),
                          )),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    ClipOval(
                      child: Material(
                        color: AppColors.primaryColor, // Button color
                        child: InkWell(
                          onTap: () {
                            FilterSearch(
                                context,
                                types,
                                (index) async =>  {
                                  setState(() {
                                    types
                                        .forEach((gender) => gender.isSelected = false);
                                    types[index].isSelected = true;
                                  })
                                },dropdownItems,selectedValue);
                          },
                          child: const SizedBox(
                              width: 40,
                              height: 40,
                              child: Icon(
                                Icons.tune,
                                color: AppColors.whiteColor,
                              )),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: widget._controller.listAnnounces.length,
                      itemBuilder: (context, int index) {
                        return widget._controller.listAnnounces[index];
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
