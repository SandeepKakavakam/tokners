import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:tokner/app.dart';

class HeadComponent extends StatefulWidget {

  const HeadComponent({super.key});

  @override
  State<HeadComponent> createState() => _HeadComponentState();
}

class _HeadComponentState extends State<HeadComponent> {
  LanguageTranslation text = LanguageTranslation.current;

  @override
  Widget build(BuildContext context) {
    DeviceScreenType deviceType = getDeviceType(MediaQuery.of(context).size);
    List<String> appBarText = [text.our_team, text.tokens, text.connect_wallet, text.lightpaper];
    return ScreenTypeLayout.builder(
      mobile: (context) {
        return Column(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Assets.images.imgBgMobile.image(
                      height: 150, width: MediaQuery.of(context).size.width, fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 23, top: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mobileAppBar(appBarText),
                      const SizedBox(
                        height: 56,
                      ),
                      gradientText(deviceType)
                    ],
                  ),
                )
              ],
            ),
            mainTextComponent(deviceType),
            Stack(
              children: [
                Assets.images.imgMobileHome
                    .image(width: MediaQuery.of(context).size.width, fit: BoxFit.cover),
                Container(
                  padding: const EdgeInsets.only(left: 23.0, top: 40),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(52), boxShadow: [
                    BoxShadow(
                        color: ColorName.buttonColor.withOpacity(0.25),
                        blurRadius: 30,
                        offset: const Offset(0, 45))
                  ]),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorName.buttonColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(52.0)),
                          minimumSize: const Size(150, 60)),
                      onPressed: () {},
                      child: Text(
                        text.learn_more,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontFamily: FontFamily.gothic,
                            color: ColorName.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      )),
                )
              ],
            )
          ],
        );
      },
      desktop: (context) {
        return Stack(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: Assets.images.imgBg
                    .image(width: MediaQuery.of(context).size.width, fit: BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                webAppBar(appBarText),
                Row(
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: mainTextComponent(deviceType)),
                    Assets.images.imgWebHome.image(
                        width: MediaQuery.of(context).size.width * 0.55,
                        height: 650,
                        fit: BoxFit.fill)
                  ],
                ),
              ],
            )
          ],
        );
      },
    );
  }

  Widget mobileAppBar(List<String> appBarText) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.images.imgLogo.image(height: 25, width: 155),
          const Spacer(),
          MenuAnchor(
            builder: (BuildContext context, MenuController controller, Widget? child) {
              return IconButton(
                onPressed: () {
                  if (controller.isOpen) {
                    controller.close();
                  } else {
                    controller.open();
                  }
                },
                icon: Assets.images.imgMenuMobile.image(height: 24, width: 24),
                // tooltip: 'Show menu',
              );
            },
            menuChildren: List<MenuItemButton>.generate(
              appBarText.length,
              (int index) => MenuItemButton(
                onPressed: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(appBarText[index],
                        style: const TextStyle(
                          fontFamily: FontFamily.gothic,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: ColorName.background,
                        )),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ]);
  }

  Widget webAppBar(List<String> appBarText) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          width: 40,
        ),
        Assets.images.imgLogo.image(height: 25, width: 155),
        const SizedBox(
          width: 40,
        ),
        Container(
          padding:const EdgeInsets.only(top: 10) ,
          height: 30,
          width: MediaQuery.of(context).size.width * 0.5,
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: appBarText.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                child: Text(
                  appBarText[index],
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontFamily: FontFamily.gothic,
                      color: ColorName.white,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2),
                ),
              );},
              separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),

          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            text.sign_in,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontFamily: FontFamily.gothic,
                color: ColorName.white,
                fontWeight: FontWeight.w700,
                letterSpacing: 2),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: OutlinedButton(

            onPressed: () {},
            style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  width: 2.0,
                  color: ColorName.buttonColor,
                ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(52.0)),
                minimumSize: Size(MediaQuery.of(context).size.width * 0.09, 48)),
            child: Text(
              text.sign_up,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontFamily: FontFamily.gothic,
                    color: ColorName.white,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
        ),
        const SizedBox(
          width: 40,
        )
      ],
    );
  }

  Widget gradientText(DeviceScreenType deviceType) {
    return GradientText(
      gradientDirection: GradientDirection.ttb,
      text.at_tokners_we_are,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontFamily: FontFamily.gothic,
          color: ColorName.white,
          fontWeight: FontWeight.w700,
          fontSize: deviceType == DeviceScreenType.mobile ? 14 : 16),
      colors: const [
        ColorName.gradientTextShade2,
        ColorName.gradientTextShade1,
      ],
    );
  }

  Widget mainTextComponent(DeviceScreenType deviceType) {
    return Padding(
      padding: EdgeInsets.only(
          left: deviceType == DeviceScreenType.mobile ? 23 : 175,
          top: 10.0,
          right: deviceType == DeviceScreenType.mobile ? 15 : 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          deviceType == DeviceScreenType.mobile ? const SizedBox() : gradientText(deviceType),
          deviceType == DeviceScreenType.mobile
              ? const SizedBox()
              : const SizedBox(
                  height: 10,
                ),
          Text(
            text.home_main_text,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontFamily: FontFamily.gothic,
                color: ColorName.white,
                fontWeight: FontWeight.w700,
                fontSize: deviceType == DeviceScreenType.mobile ? 36 : 38,
                letterSpacing: 2),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            text.home_main_description,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  height: 1.5,
                  fontFamily: FontFamily.gothic,
                  color: ColorName.grayShade.withOpacity(0.60),
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                  letterSpacing: 2,
                ),
          ),
          deviceType == DeviceScreenType.mobile
              ? const SizedBox()
              : const SizedBox(
                  height: 40,
                ),
          deviceType == DeviceScreenType.mobile
              ? const SizedBox()
              : Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(52), boxShadow: [
                    BoxShadow(
                        color: ColorName.buttonColor.withOpacity(0.25),
                        blurRadius: 25,
                        offset: const Offset(0, 15))
                  ]),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorName.buttonColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(52.0)),
                          minimumSize: const Size(150, 60)),
                      onPressed: () {},
                      child: Text(
                        text.learn_more,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontFamily: FontFamily.gothic,
                            color: ColorName.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      )),
                )
        ],
      ),
    );
  }
}
