import 'package:email_password_login/view/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:hardware/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  final Color iconcolor;
  const IconAndTextWidget(
      {Key? key,
      required this.icon,
      required this.text,
      required this.iconcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconcolor,
        ),
        SizedBox(width: 5),
        SmallText(
          text: text,
        )
      ],
    );
  }
}
