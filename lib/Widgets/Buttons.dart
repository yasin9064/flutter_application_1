import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String buttonName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  const RoundedButton({super.key, 
    required this.buttonName,
    this.icon,
    this.bgColor = Colors.blue,
    this.textStyle,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          callback!();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shadowColor: bgColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(19))
          )
        ),
        child: icon!=null? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon!,
            Container(
              width: 11,
            ),
            Text(buttonName, style: textStyle,)
          ],

        ): Text(buttonName, style: textStyle,),
      );
  }
}
