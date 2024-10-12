import 'package:flutter/material.dart';
import 'package:islami/core/routes_manager.dart';
import 'package:islami/presentation/modules/home_modules/screens/home/tabs/quarn_tap/quarn_tap.dart';

class SuraNameWidget extends StatelessWidget {
 SuraItem  suraItem;

  SuraNameWidget({super.key, required this.suraItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          RoutesManager.quranDetailsRoute,
          arguments: suraItem,
        );
      },
      child: IntrinsicHeight(
        child: Row(
          textDirection: TextDirection.rtl,
          children: [
            Expanded(
                child: Text(
              suraItem.suraName,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            )),
            Container(width: 2, color: Theme.of(context).dividerColor),
            Expanded(
                child: Text(
              suraItem.versesNumber,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            )),
          ],
        ),
      ),
    );
  }
}