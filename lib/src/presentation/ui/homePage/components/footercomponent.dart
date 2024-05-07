import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/colors.gen.dart';
import '../../../../../gen/fonts.gen.dart';
import '../../../../../generated/l10n.dart';

class HomeFooterComponent extends StatefulWidget {

  const HomeFooterComponent({super.key,});

  @override
  State<HomeFooterComponent> createState() => _HomeFooterComponentState();
}

class _HomeFooterComponentState extends State<HomeFooterComponent> {
  List<String> buyData = [
    'First Connect your Metamask or TrustWallet to the "Connect Wallet" on the Homepage.',
    'Then send minimum of 0.1 BNB or maximum of 10 BNB to the Presale wallet',
    'Then after you will received your WNTR to your address within 24hours.'
  ];

  LanguageTranslation text = LanguageTranslation.current;

  @override
  Widget build(BuildContext context) {
    DeviceScreenType deviceType = getDeviceType(MediaQuery.of(context).size);
    List<String> appBarText = [text.our_team, text.tokens, text.connect_wallet, text.lightpaper];
    return ScreenTypeLayout.builder(
      desktop: (context) {
        return Stack(
          children: [
            Align(
                alignment: Alignment.bottomRight,
                child: Assets.images.imgWebFotter.image(
                    width: MediaQuery.of(context).size.width, height: 650, fit: BoxFit.fill)),
            Column(
              children: [
                buyComponent(deviceType, appBarText),
                const SizedBox(
                  height: 30,
                ),
                footerComponent(deviceType)
              ],
            )
          ],
        );
      },
      mobile: (context) {
        return Column(
          children: [
            buyComponent(deviceType, appBarText),
            const SizedBox(
              height: 30,
            ),
            footerComponent(deviceType)
          ],
        );
      },
    );
  }

  Widget buyComponent(DeviceScreenType deviceType, List<String> appBarText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text.how_to_buy,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontFamily: FontFamily.gothic,
              color: ColorName.white,
              fontWeight: FontWeight.w700,
              fontSize: 36),
        ),
        ResponsiveBuilder(builder: (context, sizingInfo) {

          if (sizingInfo.isDesktop) {
            return Stack(
              children: [
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 70),
                    itemCount: buyData.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: index == 1 ? 100 : 0),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.35,
                              width: MediaQuery.of(context).size.width * 0.30,
                              decoration: BoxDecoration(
                                  color: ColorName.containerColor,
                                  borderRadius: BorderRadius.circular(16.0)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0, left: 20),
                                    child: Text(
                                      ("0${index + 1}").toString(),
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                          fontFamily: FontFamily.gothic,
                                          color: ColorName.white.withOpacity(0.3),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 90, right: 90, top: 40),
                                    child: Text(
                                      buyData[index],
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                          fontFamily: FontFamily.gothic,
                                          color: ColorName.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          )
                        ],
                      );
                    },
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 160.0, left: MediaQuery.of(context).size.width*0.34),
                  child: SizedBox(
                    height: 50,
                    child: ListView.builder(
                      itemCount: buyData.length - 1,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection:
                          deviceType == DeviceScreenType.desktop ? Axis.horizontal : Axis.vertical,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: ColorName.background,
                                  borderRadius: BorderRadius.circular(52.0),
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: index == 0 ? ColorName.buttonColor : ColorName.skyBlue,
                                )),
                             SizedBox(
                              width: MediaQuery.of(context).size.width*0.27,
                            )
                          ],
                        );
                      },
                    ),
                  ),
                )
              ],
            );
          }
          return Stack(
            alignment: Alignment.center,
            children: [
              ListView.builder(
                padding: const EdgeInsets.only(left: 23, right: 10),
                itemCount: buyData.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.90,
                        decoration: BoxDecoration(
                            color: ColorName.containerColor,
                            borderRadius: BorderRadius.circular(16.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0, left: 20),
                              child: Text(
                                ("0${index + 1}").toString(),
                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontFamily: FontFamily.gothic,
                                    color: ColorName.white.withOpacity(0.3),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40, right: 40, top: 30),
                              child: Text(
                                buyData[index],
                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontFamily: FontFamily.gothic,
                                    color: ColorName.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      )
                    ],
                  );
                },
              ),
              ListView.builder(
                padding: const EdgeInsets.only(top: 200.0, left: 160),
                itemCount: buyData.length - 1,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: ColorName.background,
                            borderRadius: BorderRadius.circular(52.0),
                          ),
                          child: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 22,
                            color: index == 0 ? ColorName.buttonColor : ColorName.yellow,
                          )),
                      const SizedBox(
                        height: 215,
                      )
                    ],
                  );
                },
              )
            ],
          );
        }),
        ResponsiveBuilder(builder: (context, sizingInfo) {

          if (sizingInfo.isDesktop) {
            return SizedBox(
              height: 170,
              width: MediaQuery.of(context).size.width * 0.58,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 70.0),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: appBarText.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Text(
                          appBarText[index].toUpperCase(),
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontFamily: FontFamily.gothic,
                              color: ColorName.white,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.underline,
                              letterSpacing: 2),
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Text(
                        "/",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontFamily: FontFamily.gothic,
                              color: ColorName.white.withOpacity(0.16),
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                    ],
                  );
                },
              ),
            );
          }
          return const SizedBox();
        }),
      ],
    );
  }

  Widget footerComponent(DeviceScreenType deviceType) {
    return ResponsiveBuilder(builder: (context, sizingInfo) {

      if (sizingInfo.isDesktop) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Assets.images.imgLogo.image(height: 30, fit: BoxFit.fill),
            Assets.images.imgContactUs.image(height: 30, fit: BoxFit.fill),
            Text(
              text.footer_cp,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontFamily: FontFamily.gothic,
                    color: ColorName.white,
                    fontSize: 8,
                    fontWeight: FontWeight.w700,
                  ),
            )
          ],
        );
      }
      return  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Assets.images.imgLogo.image(height: 30, fit: BoxFit.fitHeight),
          const SizedBox(
            height: 40,
          ),
          Assets.images.imgContactUs.image(height: 60, width: 400, fit: BoxFit.fill),
          const SizedBox(
            height: 40,
          ),
          Text(
            text.footer_cp,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontFamily: FontFamily.gothic,
              color: ColorName.white,
              fontSize: 8,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      );
    });
  }
}
