import 'package:fist_app/core/constants/dismension_constants.dart';
import 'package:fist_app/core/helpers/asset_helper.dart';
import 'package:fist_app/representation/screen/select_date_screen.dart';
import 'package:fist_app/representation/widgets/app_bar_container.dart';
import 'package:fist_app/representation/widgets/button_wigets.dart';
import 'package:fist_app/representation/widgets/item_booking_widget.dart';
import 'package:flutter/cupertino.dart';

class HotelBookingScreen extends StatefulWidget {
  const HotelBookingScreen({Key? key}) : super(key: key);

  static const String routeName = '/hotel_booking_screen';

  @override
  State<HotelBookingScreen> createState() => _HotelBookingScreenState();
}

class _HotelBookingScreenState extends State<HotelBookingScreen> {
  @override
  Widget build(BuildContext context) {
    final name = ModalRoute.of(context)!.settings.arguments;
    return AppBarContainerWidget(
      titleString: 'Hotel Booking',
      implementLeading: true,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: kMediumPadding * 2,
            ),
            ItemBookingWidget(
                icon: AssetHelper.icoLocation,
                titel: 'Destination',
                description: name.toString(),
                onTap:() {},
            ),
            SizedBox(
              height: kMediumPadding ,
            ),
            ItemBookingWidget(
              icon: AssetHelper.icoCalendar,
              titel: 'Select Date',
              description: '13 Feb - 18 Feb 2021',
              onTap:() async {
               final result = await Navigator.of(context).pushNamed(SelectDateScreen.routeName);
              },
            ),
            SizedBox(
              height: kMediumPadding ,
            ),
            ItemBookingWidget(
              icon: AssetHelper.icoBed,
              titel: 'Guest and Room',
              description: '2 Guest, 1 Room',
              onTap:() {},
            ),
            SizedBox(
              height: kMediumPadding ,
            ),
            ButtonWidget(
                title: 'Search',
                ontap: () {},
            )
          ],
        ),
      ),
    );
  }
}
