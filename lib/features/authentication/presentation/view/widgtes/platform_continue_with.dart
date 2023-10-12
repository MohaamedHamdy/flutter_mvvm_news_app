
import 'package:flutter/material.dart';
import 'package:news_app2/core/utils/styles.dart';

class PlatformContinueWithWidget extends StatelessWidget {
  const PlatformContinueWithWidget(
      {Key? key, required this.platformName, required this.widget})
      : super(key: key);
  final String platformName;
  // final IconData icon;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 48),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget,
              const SizedBox(width: 6,),
              Text(
                platformName,
                style: AppStyle.style16
                    .copyWith(color: const Color.fromRGBO(102, 112, 128, 1)),
              ),
            ],
          ),
        ),
      ), // to be done
    );
  }
}