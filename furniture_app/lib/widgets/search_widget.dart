import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/views/filter_screen.dart';
import 'package:furniture_app/views/search_screen.dart';
import 'package:gap/gap.dart';

/*Created By: Tushar Jethva
  used_for: to show search app bar
  screen: home_screen
 */
class MySearchWidget extends StatelessWidget {
  const MySearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: getHeight(height: 0.06, context: context),
      margin: EdgeInsets.only(left: getWidth(width: 0.02, context: context)),
      width: double.infinity,
      decoration: BoxDecoration(
          color: theme.hoverColor, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MySearchScreen.routeName);
              },
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/images/search_icon.svg",
                    // ignore: deprecated_member_use
                    color: greyColor,
                  ),
                  Gap(getWidth(width: 0.015, context: context)),
                  SizedBox(
                    width: getWidth(width: 0.3, context: context),
                    child: TextField(
                      onTap: () {
                        Navigator.pushNamed(context, MySearchScreen.routeName);
                        FocusScope.of(context).unfocus();
                      },
                      onTapOutside: (event) {
                        FocusScope.of(context).unfocus();
                      },
                      cursorColor: primaryColor,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search Furniture",
                          hintStyle: theme.textTheme.bodyMedium!.copyWith(
                              color: greyColor, fontWeight: FontWeight.w500)),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MyFilterScreen.routeName);
              },
              child: SvgPicture.asset(
                "assets/images/filter_icon.svg",
                // ignore: deprecated_member_use
                color: greyColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
