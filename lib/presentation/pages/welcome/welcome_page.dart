import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../core/theme/custom_button_style.dart';
import '../../core/theme/theme_helper.dart';
import '../../core/utils/image_constants.dart';
import '../../core/widgets/custom_elevated_button.dart';
import '../../core/widgets/custom_image_view.dart';
import '../../core/widgets/gradient_text.dart';
import '../../routes/app_router.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final CarouselSliderController buttonCarouselController =
      CarouselSliderController();
  int _current = 0;
  final items = const [
    CarouselItem("Your \nTickets on \nOne Place"),
    CarouselItem("Get \nNotified \nAbout \nEvents"),
    CarouselItem("Get \nNotified \nAbout \nEvents"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 9.w,
            vertical: 0.4.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 2.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "HEY \nREADY FOR",
                    style: theme.textTheme.displayLarge!.copyWith(
                      height: 1.10,
                      fontFamily: "Figtree",
                      color: Colors.white,
                      fontSize: 38.sp,
                    ),
                  ),
                  GradientText(
                    'TONIGHT?',
                    style: theme.textTheme.displayLarge!.copyWith(
                      height: 1.10,
                      fontFamily: "Figtree",
                      color: Colors.white,
                      fontSize: 38.sp,
                    ),
                    gradient: LinearGradient(
                      begin: const Alignment(0, 0),
                      end: const Alignment(1, 0),
                      colors: [
                        appTheme.cyan500,
                        appTheme.indigoA100,
                        appTheme.pink300,
                      ],
                    ),
                  )
                ],
              ),
              Expanded(
                child: CarouselSlider(
                  carouselController: buttonCarouselController,
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    height: double.maxFinite,
                    viewportFraction: 0.75,
                    onPageChanged: (index, reason) => setState(() {
                      _current = index;
                    }),
                  ),
                  items: items,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(items.length, (index) {
                  return ProgressNumber(
                    index + 1,
                    isActive: index == _current,
                    isFirst: index == 0,
                    isLast: index == items.length - 1,
                    onPressed: () {
                      buttonCarouselController.animateToPage(index);
                      setState(() {
                        _current = index;
                      });
                    },
                  );
                }),
              ),
              SizedBox(height: 3.h),
              CustomElevatedButton(
                text: "Start using TickeTree",
                buttonStyle: CustomButtonStyles.fillOnPrimaryContainer.copyWith(
                  backgroundColor:
                      const WidgetStatePropertyAll(Color(0xFF00CCCC)),
                  foregroundColor: const WidgetStatePropertyAll(Colors.black),
                ),
                buttonTextStyle:
                    theme.textTheme.titleSmall!.copyWith(color: Colors.black),
                onPressed: () => Navigator.of(context)
                    .pushReplacementNamed(AppRouter.startOptionsRoute),
              ),
              SizedBox(height: 5.h),
            ],
          ),
        ),
      ),
    );
  }
}

class CarouselItem extends StatelessWidget {
  final String text;
  const CarouselItem(
    this.text, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.welcomeBgImage,
                height: constraints.maxHeight * 0.8,
                width: constraints.maxWidth * 0.9,
                fit: BoxFit.cover,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Positioned(
                right: 0,
                top: 0,
                child: CustomImageView(
                  imagePath: ImageConstant.welcomeLeafImg,
                  height: constraints.maxHeight * 0.15,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ]);
      },
    );
  }
}

class ProgressNumber extends StatelessWidget {
  final bool isActive;
  final int number;
  final bool isFirst;
  final bool isLast;
  final VoidCallback? onPressed;
  const ProgressNumber(
    this.number, {
    super.key,
    this.isActive = false,
    this.onPressed,
    this.isFirst = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (!isFirst)
            ...List.generate(
              2,
              (index) => Container(
                margin: EdgeInsets.symmetric(horizontal: 0.25.w),
                height: 0.5.w,
                width: 1.w,
                color: isActive
                    ? appTheme.cyan500
                    : const Color(0xFFEBEBF5).withOpacity(0.6),
              ),
            ),
          Container(
            alignment: Alignment.center,
            height: 8.w,
            width: 8.w,
            decoration: BoxDecoration(
                border: Border.all(
                  color: isActive
                      ? appTheme.cyan500
                      : const Color(0xFFEBEBF5).withOpacity(0.6),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(1.w)),
            child: Text(
              number.toString(),
              style: TextStyle(
                  color: isActive
                      ? appTheme.cyan500
                      : const Color(0xFFEBEBF5).withOpacity(0.6),
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 1.w),
          if (!isLast)
            ...List.generate(
              2,
              (index) => Container(
                margin: EdgeInsets.symmetric(horizontal: 0.25.w),
                height: 0.5.w,
                width: 1.w,
                color: isActive
                    ? appTheme.cyan500
                    : const Color(0xFFEBEBF5).withOpacity(0.6),
              ),
            ),
        ],
      ),
    );
  }
}
