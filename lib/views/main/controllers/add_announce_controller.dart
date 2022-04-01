import 'package:dari/views/models/Item.dart';
import 'package:dari/widgets/add_card.dart';
import 'package:dari/widgets/card_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddAnnounceController extends GetxController {
  late TextEditingController name, description,emailForget,passwordChange,passwordConfirm;
  bool valuefirst = false;
  bool valuesecond = false;



  String selectedValue = "Mahdia" ;
  RxString selectedValueType = "".obs;
  RxString selectedValueRegion = "".obs;


  final RxList<Widget> listImages = <Widget>[].obs;



  RxList<Item> types = <Item>[].obs;
  List<DropdownMenuItem<String>> get dropdownItemsVille{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Mahdia"),value: "Mahdia"),
      DropdownMenuItem(child: Text("Sfax"),value: "Sfax"),
      DropdownMenuItem(child: Text("Monastir"),value: "Monastir"),
      DropdownMenuItem(child: Text("Sousse"),value: "Sousse"),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get dropdownItemsType{
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(child: Text("Villa"),value: "Villa"),
      const DropdownMenuItem(child: Text("Appartement"),value: "Appartement"),
      const DropdownMenuItem(child: Text("Studio"),value: "Studio"),
      const DropdownMenuItem(child: Text("Maison"),value: "Maison"),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get dropdownItemsRegion{
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(child: Text("Region 1"),value: "Region 1"),
      const DropdownMenuItem(child: Text("Region 2"),value: "Region 2"),
      const DropdownMenuItem(child: Text("Region 3"),value: "Region 3"),
      const DropdownMenuItem(child: Text("Region 4"),value: "Region 4"),
    ];
    return menuItems;
  }



  @override
  void onInit() {

    super.onInit();
    types.add(Item("LOUER", false));
    types.add(Item("VENDRE", false));
    selectedValueType.value= "Villa";
    selectedValueRegion.value = "Region 1";
    listImages.add(const AddCardBtn());
    name = TextEditingController();
    description = TextEditingController();
    emailForget = TextEditingController();
    passwordChange = TextEditingController();
    passwordConfirm = TextEditingController();


  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    name.dispose();
    description.dispose();
    emailForget.dispose();
    passwordChange.dispose();
    passwordConfirm.dispose();
  }
  void setType(value) {
    selectedValueType.value = value;
  }
 void  onChooseType(index){
   types
         .forEach((gender) => gender.isSelected = false);
     types[index].isSelected = true;

 }

  addImage() {
    listImages.add(CardImage());
  }
  removeImage(index){
    listImages.removeAt(index);
  }
}