import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';
import 'package:zemira/src/utils/app_colors.dart';

class HomeSearch extends StatelessWidget {
  HomeSearch({Key? key}) : super(key: key);
  final countries = [
    {"name": ""}
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 41, top: 21, right: 41),
      child: SearchField(
        searchStyle: const TextStyle(
            color: AppColors.fadedGray,
            fontSize: 15,
            decoration: TextDecoration.none,
            decorationColor: AppColors.backgroundColor,
            fontFamily: 'Poppins, Regular'),
        searchInputDecoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.fromLTRB(0, 15.0, 0, 15.0),
            prefixIconColor: AppColors.gray,
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.fadedGray),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.fadedGray),
            ),
            hintText: 'Search music here',
            hintStyle: const TextStyle(
                color: AppColors.gray,
                fontSize: 15,
                fontFamily: 'Poppins, Regular'),
            prefixIcon: IconButton(
                alignment: Alignment.centerLeft,
                onPressed: null,
                icon: Image.asset(
                  'assets/icons/search.png',
                  width: 16,
                  height: 16,
                ))),
        marginColor: Colors.amber,
        suggestions: countries
            .map(
              (e) => SearchFieldListItem(
                e.toString(),
                item: e,
              ),
            )
            .toList(),
      ),
    );
  }
}
