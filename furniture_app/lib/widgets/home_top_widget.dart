import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/widgets/icon_container.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:furniture_app/widgets/search_widget.dart';
import 'package:gap/gap.dart';

class MyHomeTopWidget extends StatelessWidget {
  const MyHomeTopWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
        final theme = Theme.of(context);

    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.all(0.0),
          leading: const CircleAvatar(
            radius: 50,
            backgroundColor: greyColor,
            backgroundImage: AssetImage("assets/images/surya_dp.jpg"),
          ),
          title: MyReusableText(
              content: "Welcome",
              style: theme.textTheme.titleMedium!
                  .copyWith(color: greyColor)),
          subtitle: MyReusableText(
            content: "Tushar Jethva",
            style: theme.textTheme.bodyLarge!,
          ),
          trailing: MyIconContainer(child: Image.asset("assets/images/bell_icon.png",color: theme.iconTheme.color,),onPressed: (){},),
        ),
        Gap(getHeight(height: 0.02, context: context)),
        const MySearchWidget()
      ],
    );
  }
}

