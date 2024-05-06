import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tokner/app.dart';

class HomeCardsComponent extends StatefulWidget {
  final DeviceScreenType deviceType;
  const HomeCardsComponent({super.key, required this.deviceType});

  @override
  State<HomeCardsComponent> createState() => _HomeCardsComponentState();
}

class _HomeCardsComponentState extends State<HomeCardsComponent> {
  LanguageTranslation text = LanguageTranslation.current;
  List<CardModel> cardData = [
    CardModel(
        title: "Creators",
        description:
            "Creators can gain independence through a decentralised digital currency system that is dependent on growing and engaging with the community and also their star power. They own 10-15% of the total value of the tokens minted.",
        icon: Assets.images.imgCreatorIcon.image(height: 4, width: 4),
        color: ColorName.buttonColor),
    CardModel(
        title: "Holders",
        description:
            "Holding social tokens allows the individual to gain access to benefits including unreleased content, private communities, direct access to celebrity, early- access to tickets and more as well as the ability to trade with other communities in order to gain access to more creator content with early token buyers being the biggest winners as the value of the token increases with more buyers.",
        icon: Assets.images.imgHolderIcon.image(height: 4, width: 4),
        color: ColorName.mentorColor),
  ];
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            cards(widget.deviceType),
            const SizedBox(
              height: 60,
            ),
            Assets.images.imgMobileArc
                .image(width: MediaQuery.of(context).size.width, fit: BoxFit.fill),
            whiteContainer(widget.deviceType)
          ],
        );
      },
      desktop: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.65,
                width: double.infinity,
                child: cards(widget.deviceType)),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Assets.images.imgWebArc
                    .image(height: MediaQuery.of(context).size.height*0.9,width: MediaQuery.of(context).size.width * 0.5, fit: BoxFit.fill),
                whiteContainer(widget.deviceType),
                const SizedBox(
                  height: 50,
                )
              ],
            )
          ],
        );
      },
    );
  }

  Widget cards(DeviceScreenType deviceType) {
    return Padding(
      padding: EdgeInsets.only(left: deviceType == DeviceScreenType.desktop ? 175 : 23),
      child: ListView.builder(
        itemCount: cardData.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: deviceType == DeviceScreenType.desktop ? Axis.horizontal : Axis.vertical,
        itemBuilder: (context, index) {
          return deviceType == DeviceScreenType.desktop
              ? Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: index == 1 ? 80 : 0),
                      child: Container(
                        height: index == 0
                            ? MediaQuery.of(context).size.height * 0.48
                            : MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(
                            color: ColorName.containerColor,
                            borderRadius: BorderRadius.circular(16.0)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40.0, left: 40, right: 40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: cardData[index].color,
                                      borderRadius: BorderRadius.circular(52.0),
                                      boxShadow: [
                                        BoxShadow(
                                            color: cardData[index].color.withOpacity(0.25),
                                            blurRadius: 15,
                                            offset: const Offset(0, 15))
                                      ]),
                                  child: cardData[index].icon),
                              const SizedBox(
                                height: 20,
                              ),
                              RichText(
                                  text: TextSpan(
                                      text: "For  ",
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                          fontSize: 20,
                                          color: ColorName.white,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: FontFamily.gothic),
                                      children: <TextSpan>[
                                    TextSpan(
                                        text: cardData[index].title,
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                            fontSize: 20,
                                            color: cardData[index].color,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: FontFamily.gothic,
                                            decoration: TextDecoration.underline)),
                                  ])),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                cardData[index].description,
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                    height: 1.5,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w200,
                                    color: ColorName.white.withOpacity(0.5),
                                    fontFamily: FontFamily.gothic),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Learn More",
                                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                        fontSize: 10,
                                        decoration: TextDecoration.underline,
                                        color: cardData[index].color,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: FontFamily.gothic),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 14,
                                    color: cardData[index].color,
                                  )
                                ],
                              ),
                              (deviceType == DeviceScreenType.desktop &&
                                      deviceType == DeviceScreenType.mobile)
                                  ? const SizedBox(
                                      height: 20,
                                    )
                                  : const SizedBox()
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    )
                  ],
                )
              : Column(
                  children: [
                    Container(
                      //height: MediaQuery.of(context).size.height * 0.55,
                      width: MediaQuery.of(context).size.width * 0.90,
                      decoration: BoxDecoration(
                          color: ColorName.containerColor,
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40.0, left: 40, right: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: cardData[index].color,
                                    borderRadius: BorderRadius.circular(52.0),
                                    boxShadow: [
                                      BoxShadow(
                                          color: cardData[index].color.withOpacity(0.25),
                                          blurRadius: 15,
                                          offset: const Offset(0, 15))
                                    ]),
                                child: cardData[index].icon),
                            const SizedBox(
                              height: 20,
                            ),
                            RichText(
                                text: TextSpan(
                                    text: "For  ",
                                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                        fontSize: 28,
                                        color: ColorName.white,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: FontFamily.gothic),
                                    children: <TextSpan>[
                                  TextSpan(
                                      text: cardData[index].title,
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                          fontSize: 28,
                                          color: cardData[index].color,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: FontFamily.gothic,
                                          decoration: TextDecoration.underline)),
                                ])),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              cardData[index].description,
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: ColorName.white.withOpacity(0.5),
                                  fontFamily: FontFamily.gothic),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  text.learn_more,
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                      fontSize: 16,
                                      decoration: TextDecoration.underline,
                                      color: cardData[index].color,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: FontFamily.gothic),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 18,
                                  color: cardData[index].color,
                                )
                              ],
                            ),
                            deviceType == DeviceScreenType.mobile
                                ? const SizedBox(
                                    height: 30,
                                  )
                                : const SizedBox()
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                );
        },
      ),
    );
  }

  Widget whiteContainer(DeviceScreenType deviceType) {
    return Container(
      width: deviceType == DeviceScreenType.desktop
          ? MediaQuery.of(context).size.width * 0.5
          : MediaQuery.of(context).size.width,
      height: deviceType == DeviceScreenType.desktop
          ? MediaQuery.of(context).size.height * 0.90
          : MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: ColorName.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(deviceType == DeviceScreenType.desktop ? 300.0 : 0),
            topRight: Radius.circular(deviceType == DeviceScreenType.mobile || deviceType == DeviceScreenType.tablet ? 300.0 : 0)),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: deviceType == DeviceScreenType.desktop ? 150.0 : 90,
            left: deviceType == DeviceScreenType.desktop ? 120.0 : 20,
            right: deviceType == DeviceScreenType.desktop ? 60.0 : 20),
        child: RichText(
            text: TextSpan(
                text: text.white_container_question,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: 38,
                    color: ColorName.background,
                    fontWeight: FontWeight.w900,
                    fontFamily: FontFamily.gothic),
                children: <TextSpan>[
              TextSpan(
                text: text.white_container_main_answer,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 14,
                    color: ColorName.background.withOpacity(0.6),
                    fontWeight: FontWeight.w900,
                    fontFamily: FontFamily.gothic),
              ),
              TextSpan(
                text: text.white_container_answer,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontSize: 16,
                    color: ColorName.background.withOpacity(0.6),
                    fontWeight: FontWeight.w400,
                    fontFamily: FontFamily.gothic),
              ),
            ])),
      ),
    );
  }
}
