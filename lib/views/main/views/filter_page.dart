import 'package:dari/views/models/Item.dart';
import 'package:dari/widgets/cart_counter.dart';
import 'package:dari/widgets/custom_radio.dart';
import 'package:dari/widgets/input_field.dart';
import 'package:dari/widgets/submit_button.dart';
import 'package:flutter/material.dart';

void FilterSearch(
    BuildContext context, List<Item> types,Function(int index) onPressed,List<DropdownMenuItem<String>> dropdownItems,String selectedValue) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    // isDismissible: false,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))),
    builder: (BuildContext context) {
      return SizedBox(
        height: 550,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputField(field:"Titre",placeholder:"Entrez votre titre", controller: TextEditingController(),),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Ville",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff374151),
                  ),
                ),
              ),
              DropdownButtonFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintStyle: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  dropdownColor: Colors.white,
                  value: selectedValue,
                  onChanged: (String? newValue) {

                  },
                  items: dropdownItems),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "La nombre des chambres",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff374151),
                  ),
                ),
              ),
              Center(
                child: CartCounter() ,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "La nombre des salles des bains",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff374151),
                  ),
                ),
              ),
              Center(
                child: CartCounter() ,
              ),
              const SizedBox(
                height: 15,
              ),
              SubmitButton(title:"Rechercher",onPressed: ()=>{

              },),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      );
    },
  );
}
