// import 'package:bringgg/constants/colors.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

import 'colors.dart';
// import 'custom_styles.dart';

class BringggBuildButton extends StatefulWidget {

  final String labelText;
  final String iconPath;
  final bool isSelected;
  final VoidCallback  onPressed;
  const BringggBuildButton({super.key,   this.labelText="", required this.onPressed, required this.isSelected, required this.iconPath});

  @override
  State<BringggBuildButton> createState() => _BringggBuildButtonState();
}

class _BringggBuildButtonState extends State<BringggBuildButton> {
  @override
  Widget build(BuildContext context) {
    bool isVisible=widget.labelText==""?false:true;

    return GestureDetector(
      onTap:widget.onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width,

        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(20),
        ),
        child:
        Card(
          color: widget.isSelected? primaryColor: whiteColor,
          child: Column(
            mainAxisAlignment:
            MainAxisAlignment
                .center,
            children: [
              // SvgPicture.asset(
              //   widget.iconPath,
              //
              //   colorFilter: ColorFilter.mode( widget.isSelected? Colors.white: Colors.black, BlendMode.srcIn),

              // ),
              // Visibility(
              //   visible: isVisible,
              // child: Text(
              //   widget.labelText,
              //   style:
              //   // subHeadingTextStyle(
              //   //     14,color:
              //   // widget.isSelected? Colors.white: Colors.black),
              // ),
              // )
            ],
          ),
        )
        ,
      ),
    );
  }

}
