import 'package:fist_app/core/constants/dismension_constants.dart';
import 'package:fist_app/core/helpers/asset_helper.dart';
import 'package:flutter/material.dart';

class ItemBookingWidget extends StatelessWidget {
  const ItemBookingWidget(
      {Key? key,
      required this.icon,
      required this.titel,
      required this.description,
      this.onTap})
      : super(key: key);

  final String icon;
  final String titel;
  final String description;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(
          kDefaultPadding,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(
              kItemPadding,
            ),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 35,
              height: 35,
            ),
            SizedBox(
              width: kDefaultPadding,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titel,
                ),
                SizedBox(
                  height: kMinPadding,
                ),
                Text(
                  description,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
