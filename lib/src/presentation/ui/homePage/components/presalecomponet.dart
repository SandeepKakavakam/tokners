import 'package:data/data.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:tokner/app.dart';
import 'package:tokner/src/presentation/ui/homePage/bloc/bloc/homepage_bloc.dart';
import 'package:tokner/src/presentation/ui/homePage/bloc/bloc/homepage_state.dart';

import '../../../base/bloc_page/base_page_state.dart';
import '../bloc/bloc/homepage_event.dart';

class PresaleDetails extends StatefulWidget {
  const PresaleDetails({super.key});

  @override
  State<PresaleDetails> createState() => _PresaleDetailsState();
}

class _PresaleDetailsState extends BasePageState<PresaleDetails, HomePageBloc> {
  @override
  Widget buildPage(BuildContext context) {
    List<PresaleDetailsModel> details = [
      PresaleDetailsModel(
          phase: "One",
          duration: "0/04/2021 - 16/04/2021",
          color: ColorName.buttonColor,
          bnbValue: 100000,
          softCap: 5000,
          hardCap: 10000),
      PresaleDetailsModel(
          phase: "Two",
          duration: "0/04/2021 - 16/04/2021",
          color: ColorName.skyBlue,
          bnbValue: 100000,
          softCap: 5000,
          hardCap: 10000),
      PresaleDetailsModel(
          phase: "Three",
          duration: "0/04/2021 - 16/04/2021",
          color: ColorName.yellow,
          bnbValue: 100000,
          softCap: 5000,
          hardCap: 10000),
    ];
    List<Image> imageData = [
      Assets.images.imgOneText.image(),
      Assets.images.imgTwoText.image(),
      Assets.images.imgThreeText.image(),
    ];
    DeviceScreenType deviceType = getDeviceType(MediaQuery.of(context).size);
    return ScreenTypeLayout.builder(
      desktop: (context) {
        return Stack(

          children: [

            Assets.images.imgWebPresale
                .image(width: MediaQuery.of(context).size.width, fit: BoxFit.fill),
            Positioned(right:0,top: 200,child: Assets.images.imgVectorPresaleTop.image()),
            Positioned(left:0,bottom: 200,child: Assets.images.imgPresaleVector.image()),
            Positioned(top: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  titleText(fontSize: 48),
                  SizedBox(height: 500, child: buildDetails(details, imageData, deviceType))
                ],
              ),
            ),

          ],
        );
      },
      mobile: (context) {
        return Container(
            height: 750,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.images.imgMobilePresale.path),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                titleText(fontSize: 36),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(height: 450, child: buildMobileDetails(details, imageData)),
              ],
            ));
      },
    );
  }

  Widget titleText({required double fontSize}) {
    return Text(
      LanguageTranslation.current.presale_details,
      style: TextStyle(
          fontFamily: FontFamily.gothic,
          fontSize: fontSize,
          fontWeight: FontWeight.w700,
          color: ColorName.white),
    );
  }

  Widget buildMobileDetails(List<PresaleDetailsModel> details, List<Image> imageData) {
    return BlocBuilder<HomePageBloc, HomePageState>(
        buildWhen: (p, c) => p.presaleIndex != c.presaleIndex,
        builder: (context, state) {
          return Column(
            children: [
              SizedBox(
                height: 420,
                child: PageView.builder(
                    itemCount: details.length,
                    physics: const BouncingScrollPhysics(),
                    onPageChanged: (index) {
                      bloc.add(PresaleIndexChanged(index: index));
                    },
                    controller: PageController(viewportFraction: 0.9, initialPage: 1),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 20.0, left: index == 0 ? 20 : 0),
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: ColorName.white,
                          ),
                          child: detailsText(imageData, index, details, context),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(details.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right:10.0),
                      child: Container(
                        height: index == state.presaleIndex ? 8 : 4,
                        width: index == state.presaleIndex ? 8 : 4,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: index == state.presaleIndex ? ColorName.white : Colors.transparent,
                            border: Border.all(width: 1,color: ColorName.white)
                        ),
                      ),
                    );
                  })
              ),
            ],
          );
        });
  }

  Widget buildDetails(
      List<PresaleDetailsModel> details, List<Image> imageData, DeviceScreenType deviceType) {
    return ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.only(right: 50, left: 50),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: deviceType == DeviceScreenType.desktop
                ? EdgeInsets.only(top: index.isOdd ? 80 : 0, bottom: index.isOdd ? 0 : 80)
                : EdgeInsets.only(top: index.isOdd ? 50 : 0, bottom: index.isOdd ? 0 : 50),
            child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: ColorName.white,
                ),
                child: detailsText(imageData, index, details, context)),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
              width: 20,
            ),
        itemCount: details.length);
  }

  Widget detailsText(
      List<Image> imageData, int index, List<PresaleDetailsModel> details, BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: imageData[index],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 82,
              width: 82,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: details[index].color,
                  boxShadow: [
                    BoxShadow(
                        color: details[index].color.withOpacity(0.25),
                        blurRadius: 25,
                        offset: const Offset(0, 15))
                  ],
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(50))),
              child: Text(
                "0${index + 1}",
                style: const TextStyle(
                    fontFamily: FontFamily.gothic,
                    color: ColorName.background,
                    fontSize: 26,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Text(
              "Phase ${details[index].phase}",
              style: const TextStyle(
                fontFamily: FontFamily.gothic,
                fontWeight: FontWeight.w700,
                fontSize: 32,
                color: ColorName.phaseTextColor,
              ),
            ),
            SizedBox(
              height: getValueForScreenType(context: context, mobile: 4, desktop: 9, tablet: 9),
            ),
            Text(
              details[index].duration,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.gothic,
                fontSize: 16,
                color: ColorName.phaseTextColor,
              ),
            ),
            SizedBox(
                height:
                    getValueForScreenType(context: context, mobile: 40, desktop: 70, tablet: 40)),
            Text(
              "1 BNB = ${details[index].bnbValue} WNTR",
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.gothic,
                fontSize: 20,
                color: ColorName.phaseTextColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: LanguageTranslation.current.soft_cap,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: FontFamily.gothic,
                        fontSize: 16,
                        color: ColorName.phaseTextColor),
                    children: [
                      TextSpan(
                        text: "${details[index].softCap.toString()} BNB",
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            fontFamily: FontFamily.gothic,
                            color: ColorName.phaseTextColor),
                      ),
                    ])),
            const SizedBox(
              height: 10,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: LanguageTranslation.current.hard_cap,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: FontFamily.gothic,
                        fontSize: 16,
                        color: ColorName.phaseTextColor),
                    children: [
                      TextSpan(
                        text: "${details[index].hardCap.toString()} BNB",
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: FontFamily.gothic,
                            fontSize: 16,
                            color: ColorName.phaseTextColor),
                      ),
                    ])),
          ],
        )
      ],
    );
  }
}
