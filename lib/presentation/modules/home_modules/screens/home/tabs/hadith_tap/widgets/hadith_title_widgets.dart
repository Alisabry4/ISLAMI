
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:islami/core/routes_manager.dart';
import 'package:islami/presentation/modules/home_modules/screens/home/tabs/hadith_tap/hadith_tap.dart';

class HadithTitleWidget extends StatelessWidget {
  Hadith hadith;

  HadithTitleWidget({super.key, required this.hadith});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          RoutesManager.hadithDetailsRoute,
          arguments: hadith,
        );
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
        child: Text(
          hadith.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}