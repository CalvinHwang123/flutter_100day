/**
 * 参考文献：
 * https://blog.csdn.net/weixin_52082065/article/details/133805575
 */

import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum AniProps { opacity, translateX }

class FadeAnimationX extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimationX(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MovieTween()
      ..tween(
        AniProps.opacity,
        Tween(begin: 0.0, end: 1.0),
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      )
      ..tween(
        AniProps.translateX,
        Tween(begin: 120.0, end: 0.0),
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );

    return PlayAnimationBuilder(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, child2, animation) => Opacity(
        opacity: child2.get(AniProps.opacity),
        child: Transform.translate(
            offset: Offset(child2.get(AniProps.translateX), 2), child: child),
      ),
    );
  }
}
