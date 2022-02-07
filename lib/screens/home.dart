import 'package:flutter/material.dart';
import 'package:food_delivery_app/ad_state.dart';
import 'package:food_delivery_app/custom_widgets/heading_text.dart';
import 'package:food_delivery_app/custom_widgets/paragraph_text.dart';
import 'package:food_delivery_app/custom_widgets/theme_button.dart';
import 'package:food_delivery_app/screens/second_home.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late BannerAd banner;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final addState = Provider.of<AdState>(context);
    addState.initialization.then((status) =>
    {
      setState(() {
        banner = BannerAd(size: AdSize.banner,
            adUnitId: addState.bannerAdUnitIt,
            listener: BannerAdListener(

              onAdLoaded: (Ad ad) => print('Ad loaded.'),
              onAdFailedToLoad: (Ad ad, LoadAdError error) {
                ad.dispose();
                print('Ad failed to load: $error');
              },
              onAdOpened: (Ad ad) => print('Ad opened.'),
              onAdClosed: (Ad ad) => print('Ad closed.'),
              onAdImpression: (Ad ad) => print('Ad impression.'),
            ),
            request: AdRequest())..load();
      }
      )
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ThemeButton(
        btnText: 'Next',
        route: SecondHome(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Image.asset(
                'assets/Illustartion.png',
              ),
              HeadingText(heading: 'Find your  Comfort Food here'),
              const ParagraphText(
                paragraph:
                'Here You Can find a chef or dish for every taste and color. Enjoy!',
              ),
              if(banner == null)
                SizedBox(height: 50,)
               else
                 Container(
                   height: 50,
                   child: AdWidget(ad: banner),
                 )
            ],
          ),
        ),
      ),
    );
  }
}
