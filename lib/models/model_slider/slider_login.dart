import 'package:flutter/material.dart';

import '../../constants.dart';
import 'slider_class.dart';


class NgamarOnboardingPage extends StatefulWidget {
  const NgamarOnboardingPage({super.key});

  @override
  State<NgamarOnboardingPage> createState() => _NgamarOnboardingPageState();
}

class _NgamarOnboardingPageState extends State<NgamarOnboardingPage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(onboardingList[_currentIndex].bgImage),
            fit: BoxFit.cover,
          ),
        ),
        child: CustomGradientCard(
          gradient: AppColors.customOnboardingGradient,
          child: Column(
            children: [
              const Spacer(),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: onboardingList.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return OnboardingCard(
                      onboarding: onboardingList[index],
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              CustomDotsIndicator(
                dotsCount: onboardingList.length,
                position: _currentIndex,
              ),
              const SizedBox(height: 30),
              PrimaryButton(
                onTap: () {
                  if (_currentIndex == onboardingList.length - 1) {
                  } else {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.fastOutSlowIn,
                    );
                  }
                },
                text: 'Continue',
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}


