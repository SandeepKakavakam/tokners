import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tokner/app.dart';

class HomeCardsComponent extends StatefulWidget {

  const HomeCardsComponent({super.key, });

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
        color: ColorName.skyBlue),
  ];
  @override
  Widget build(BuildContext context) {
    DeviceScreenType deviceType = getDeviceType(MediaQuery.of(context).size);
    return ScreenTypeLayout.builder(
      mobile: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            cards(deviceType, cardData),
            const SizedBox(
              height: 60,
            ),
            Assets.images.imgMobileArc
                .image(width: MediaQuery.of(context).size.width, fit: BoxFit.fill),
            whiteContainer(deviceType)
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
                child: cards(deviceType, cardData)),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Assets.images.imgWebArc.image(
                    height: MediaQuery.of(context).size.height * 0.9,
                    width: MediaQuery.of(context).size.width * 0.5,
                    fit: BoxFit.fill),
                whiteContainer(deviceType),
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

  Widget cards(DeviceScreenType deviceScreenType, List<CardModel> cardData) {
    return Padding(
      padding: EdgeInsets.only(left: deviceScreenType == DeviceScreenType.desktop ? 175 : 23),
      child: ListView.builder(
        itemCount: cardData.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection:
            deviceScreenType == DeviceScreenType.desktop ? Axis.horizontal : Axis.vertical,
        itemBuilder: (context, index) {
          return ResponsiveBuilder(
            builder: (context, sizingInformation) {
              if (sizingInformation.isDesktop) {
                return Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: index.isOdd ? 110 : 0),
                      child: Container(
                        height: index.isEven
                            ? MediaQuery.of(context).size.height * 0.48
                            : MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(
                            color: ColorName.containerColor,
                            borderRadius: BorderRadius.circular(16.0)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 36.0, left: 40, right: 40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              iconComponent(
                                  deviceScreenType, cardData[index].icon, cardData[index].color),
                              const SizedBox(
                                height: 20,
                              ),
                              cardsTitle(
                                  deviceScreenType, cardData[index].title, cardData[index].color),
                              const SizedBox(
                                height: 10,
                              ),
                              cardsDescription(deviceScreenType, cardData[index].description),
                              const SizedBox(
                                height: 20,
                              ),
                              learnMore(deviceScreenType, cardData[index].color),
                              (deviceScreenType == DeviceScreenType.desktop &&
                                      deviceScreenType == DeviceScreenType.mobile)
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
                );
              }
              return Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    decoration: BoxDecoration(
                        color: ColorName.containerColor, borderRadius: BorderRadius.circular(16.0)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40.0, left: 40, right: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          iconComponent(
                              deviceScreenType, cardData[index].icon, cardData[index].color),
                          const SizedBox(
                            height: 20,
                          ),
                          cardsTitle(
                              deviceScreenType, cardData[index].title, cardData[index].color),
                          const SizedBox(
                            height: 10,
                          ),
                          cardsDescription(deviceScreenType, cardData[index].description),
                          const SizedBox(
                            height: 30,
                          ),
                          learnMore(deviceScreenType, cardData[index].color),
                          deviceScreenType == DeviceScreenType.mobile
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
            topRight: Radius.circular(
                deviceType == DeviceScreenType.mobile || deviceType == DeviceScreenType.tablet
                    ? 300.0
                    : 0)),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: deviceType == DeviceScreenType.desktop ? 150.0 : 150,
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

  Widget iconComponent(DeviceScreenType deviceScreenType, Image icon, Color color) {
    return Container(
        height: deviceScreenType == DeviceScreenType.mobile ? 70 : 50,
        width: deviceScreenType == DeviceScreenType.mobile ? 70 : 50,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(52.0),
            boxShadow: [
              BoxShadow(color: color.withOpacity(0.25), blurRadius: 15, offset: const Offset(0, 15))
            ]),
        child: icon);
  }

  Widget cardsTitle(DeviceScreenType deviceScreenType, String title, Color color) {
    return RichText(
        text: TextSpan(
            text: "For  ",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: deviceScreenType == DeviceScreenType.mobile ? 20 : 28,
                color: ColorName.white,
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.gothic),
            children: <TextSpan>[
          TextSpan(
              text: title,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: deviceScreenType == DeviceScreenType.mobile ? 28 : 20,
                  color: color,
                  fontWeight: FontWeight.w700,
                  fontFamily: FontFamily.gothic,
                  decoration: TextDecoration.underline)),
        ]));
  }

  Widget cardsDescription(
    DeviceScreenType deviceScreenType,
    String description,
  ) {
    return Text(
      description,
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
          height: 1.5,
          fontSize: deviceScreenType == DeviceScreenType.mobile ? 16 : 10,
          fontWeight:
              deviceScreenType == DeviceScreenType.mobile ? FontWeight.w400 : FontWeight.w200,
          color: ColorName.white.withOpacity(0.5),
          fontFamily: FontFamily.gothic),
    );
  }

  Widget learnMore(DeviceScreenType deviceScreenType, Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LanguageTranslation.current.learn_more,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontSize: deviceScreenType == DeviceScreenType.mobile ? 16 : 10,
              decoration: TextDecoration.underline,
              color: color,
              fontWeight: FontWeight.w700,
              fontFamily: FontFamily.gothic),
        ),
        Icon(
          Icons.arrow_forward,
          size: deviceScreenType == DeviceScreenType.mobile ? 16 : 14,
          color: color,
        )
      ],
    );
  }
}
