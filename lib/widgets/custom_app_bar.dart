import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/assets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset ;
  const CustomAppBar({Key key, this.scrollOffset=0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      color: Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset(Assets.netflixLogo0),
            SizedBox(
              width: 12.0,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _AppBarButton(
                    tittle: "Tv Shows",
                    onTap: () {},
                  ),
                  _AppBarButton(
                    tittle: "Movies",
                    onTap: () {},
                  ),
                  _AppBarButton(
                    tittle: "My List",
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String tittle;
  final Function onTap;
  const _AppBarButton({Key key, this.tittle, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        tittle,
        style: TextStyle(
            color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w600),
      ),
    );
  }
}
