import 'package:flutter/material.dart';
import '../../../size_config.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    Key key,
    this.iconSrc,
    this.title,
    this.press,
    this.colors,
  }) : super(key: key);
  final String iconSrc, title;
  final Function press;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return InkWell(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: defaultSize * 2, vertical: defaultSize * 3),
        child: SafeArea(
          child: Row(
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: defaultSize * 1.6, //16
                  // color: Colors.black,
                  fontFamily: 'Poppins Medium'
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                size: defaultSize * 1.6,
                color: Colors.black,
              ),
              
            ],
          ),
          
        ),
        
      ),
      
    );
  }
}