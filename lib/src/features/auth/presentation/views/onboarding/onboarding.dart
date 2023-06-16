import 'package:auto_route/auto_route.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../../config/router/app_router.gr.dart';
import '../../../../../core/shared/resources/app_spacer.dart';
import '../../../../../core/shared/resources/colors_tr.dart';
import '../../../../../core/shared/resources/custom_text.dart';
import '../../../data/model/onboarding_model.dart';
import '../../widgets/trackbudi_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _pageController = PageController();

  int currentIndexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: PageView.builder(
              itemCount: onboardingModel.length,
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  currentIndexPage = value;
                });
              },
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: Column(children: [
                    Image.asset(onboardingModel[index].image),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          primaryText(text: onboardingModel[index].title),
                          heightSpace(2),
                          bodyText(text: onboardingModel[index].subTitle),
                          heightSpace(4),
                          TrackBudiButton(
                            buttonText: 'Get Started',
                            onTap: () => context.router.replace(SignupView()),
                          ),
                        ],
                      ),
                    )
                  ]),
                );
              }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            DotsIndicator(
              dotsCount: onboardingModel.length,
              position: currentIndexPage,
              decorator: DotsDecorator(
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                color: AppColors.lightPrimary.withOpacity(.44),
                activeColor: AppColors.primary,
              ),
            ),
            TextButton(
                onPressed: currentIndexPage == 2
                    ? () => context.router.replace(SignupView())
                    : nextPage,
                child: customText(
                    text: currentIndexPage == 2 ? 'Finish' : 'Next',
                    fontSize: 14,
                    textColor: AppColors.black))
          ]),
        ),
      ],
    ));
  }

  void nextPage() {
    _pageController.animateToPage(_pageController.page!.toInt() + 1,
        duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
  }
}
