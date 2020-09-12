import 'package:animation/Screen/Home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class AnimationScreen extends StatelessWidget {
  final pageDecoration = PageDecoration(
      bodyTextStyle: PageDecoration()
          .bodyTextStyle
          .copyWith(color: Colors.black, fontFamily: 'bree'),
      titleTextStyle: PageDecoration()
          .titleTextStyle
          .copyWith(color: Colors.black, fontFamily: 'Fredokaone'));
  List<PageViewModel> getpages() {
    return [
      PageViewModel(
        image: Lottie.asset('assets/lottie/coronavirus-hologram.json'),
        title: 'corona',
        body:
            'The virus that causes COVID-19 is mainly transmitted through droplets generated when an infected person coughs, sneezes, or exhales.',
        decoration: pageDecoration,
      ),
      PageViewModel(
        image: Lottie.asset('assets/lottie/medic-clinic.json'),
        title: 'corana',
        body:
            'Call a doctor or hospital right away if you have these possible symptoms of COVID-19, Problems breathing, Constant pain or pressure in your chest, Bluish lips or face,Sudden confusion',
        decoration: pageDecoration,
      ),
      PageViewModel(
        image: Lottie.asset('assets/lottie/medical-frontliners.json'),
        title: 'corana',
        body:
            'A physician, medical practitioner, medical doctor, or simply doctor, is a professional who practises medicine, which is concerned with promoting, maintaining, or restoring health through the study, diagnosis, prognosis and treatment of disease, injury, and other physical and mental impairments.',
        decoration: pageDecoration,
      ),
      PageViewModel(
        image: Lottie.asset('assets/lottie/stay-home.json'),
        title: 'corana',
        body: "Safety isn't expensive, it's priceless ",
        decoration: pageDecoration,
      ),
      PageViewModel(
        image: Lottie.asset('assets/lottie/stay-safe-stay-home.json'),
        title: 'corana',
        body:
            'Carefulness costs you nothing. Carelessness may cost you your life',
        decoration: pageDecoration,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: getpages(),
      done: Text('done'),
      onDone: () {
        Navigator.push(
            context, new MaterialPageRoute(builder: (context) => HomeScreen()));
      },
      curve: Curves.easeInOut,
      skip: Text('Skip'),
      showSkipButton: true,
      onSkip: () {
        Navigator.push(
            context, new MaterialPageRoute(builder: (context) => HomeScreen()));
      },
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 10.0),
        activeColor: Theme.of(context).primaryColor,
        color: Colors.black26,
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      ),
      animationDuration: 300,
      initialPage: 1,
      next: Text('Next'),
    );
  }
}
