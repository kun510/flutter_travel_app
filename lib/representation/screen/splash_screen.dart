import 'package:fist_app/core/helpers/asset_helper.dart';
import 'package:fist_app/core/helpers/images_helper.dart';
import 'package:fist_app/core/helpers/local_storage_helper.dart';
import 'package:fist_app/representation/screen/intro_screen.dart';
import 'package:fist_app/representation/screen/main_app.dart';
import 'package:flutter/cupertino.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static String routerName = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    redirectIntroScreen();
  }

  void redirectIntroScreen() async {
    final ignoreIntroScreen = LocalStorageHelper.getValue('ignoreIntroScreen') as bool?;
    await Future.delayed(const Duration(seconds: 2));
    if(ignoreIntroScreen !=null && ignoreIntroScreen) {
      Navigator.of(context).pushNamed(MainApp.routeName);
    }
    else{
      LocalStorageHelper.setValue('ignoreIntroScreen', true);
      Navigator.of(context).pushNamed(IntroScreen.routeName);
    }


    // ignore: use_build_context_synchronously

  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ImageHelper.loadFromAsset(
            AssetHelper.backgroundSplash,
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned.fill(
          child: ImageHelper.loadFromAsset(
            AssetHelper.circleSplash,
            fit: BoxFit.fitWidth,
          ),
        )
      ],
    );
  }
}
