import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:gap/gap.dart';

/*Created By: Tushar Jethva
  used_for: to show search app bar
  screen: home_screen
 */
class MySearchAppBar extends StatefulWidget {
  const MySearchAppBar({
    super.key,
  });

  @override
  State<MySearchAppBar> createState() => _MySearchAppBarState();
}

class _MySearchAppBarState extends State<MySearchAppBar> {
  final TextEditingController _searchController = TextEditingController();
  FocusNode searchFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1),(){
      getFocus();
    });
  }

  void getFocus(){
    FocusScope.of(context).requestFocus(searchFocusNode);
  }
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(top: getHeight(height: 0.03, context: context)),
      padding: EdgeInsets.all(getHeight(height: 0.02, context: context)),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: getWidth(width: 0.02, context: context),
            vertical: getHeight(height: 0.015, context: context)),
        decoration: BoxDecoration(
            color: theme.hoverColor, borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
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
                    controller: _searchController,
                    onTapOutside: (event) {
                      FocusScope.of(context).unfocus();
                    },
                    focusNode: searchFocusNode,
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
            GestureDetector(
              onTap: () {
                _searchController.clear();
              },
              child: SvgPicture.asset(
                "assets/icons/remove_circle.svg",
                // ignore: deprecated_member_use
                color: greyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
