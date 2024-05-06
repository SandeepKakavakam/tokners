import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/colors.gen.dart';
import '../../../../../gen/fonts.gen.dart';
import '../../../../../generated/l10n.dart';

class HomeFooterComponent extends StatefulWidget {
  final DeviceScreenType deviceType;
  const HomeFooterComponent({super.key, required this.deviceType});

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
    List<String> appBarText = [text.our_team, text.tokens, text.connect_wallet, text.lightpaper];
    return ScreenTypeLayout.builder(
      desktop: (context) {
        return Stack(
          children: [
            Align(
                alignment: Alignment.bottomRight,
                child: Assets.images.imgWebFotter
                    .image(width: MediaQuery.of(context).size.width, fit: BoxFit.cover)),
            Column(
              children: [
                buyComponent(widget.deviceType, appBarText),
                const SizedBox(
                  height: 50,
                ),
                footerComponent(widget.deviceType)
              ],
            )
          ],
        );
      },
      mobile: (context) {
        return Column(
          children: [
            buyComponent(widget.deviceType, appBarText),
            const SizedBox(
              height: 30,
            ),
            footerComponent(widget.deviceType)
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
        const SizedBox(
          height: 50,
        ),
        deviceType == DeviceScreenType.desktop
            ? Stack(
                children: [
                  SizedBox(
                    height: 400,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 173),
                      child: ListView.builder(
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
                                  height: MediaQuery.of(context).size.height * 0.30,
                                  width: MediaQuery.of(context).size.width * 0.25,
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
                                        padding:
                                            const EdgeInsets.only(left: 25, right: 25, top: 40),
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 200.0, left: 490),
                    child: SizedBox(
                      height: 50,
                      child: ListView.builder(
                        itemCount: buyData.length - 1,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: deviceType == DeviceScreenType.desktop
                            ? Axis.horizontal
                            : Axis.vertical,
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
                                    color:
                                        index == 0 ? ColorName.buttonColor : ColorName.mentorColor,
                                  )),
                              const SizedBox(
                                width: 320,
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  )
                ],
              )
            : Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 23),
                    child: ListView.builder(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 170.0, left: 220),
                    child: ListView.builder(
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
                              height: 150,
                            )
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
        deviceType == DeviceScreenType.desktop
            ? SizedBox(
                height: 150,
                child: SizedBox(
                  height: 20,
                  width: MediaQuery.of(context).size.width * 0.58,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: ListView.builder(
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
                  ),
                ),
              )
            : const SizedBox()
      ],
    );
  }

  Widget footerComponent(DeviceScreenType deviceType) {
    return deviceType == DeviceScreenType.desktop
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Assets.images.imgLogo.image(height: 30, fit: BoxFit.fitHeight),
              Assets.images.imgContactUs.image(height: 30, fit: BoxFit.fitHeight),
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
          )
        : Column(
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
  }
}
