import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:flame1/core/image_load.dart';
import 'package:flame1/game/langw_game.dart';

class Backyard {
  final LangawGame game;
  Sprite backgroundSprite;
  Rect backgroundRect;

  Backyard(this.game) {
    backgroundSprite = Sprite(ImageLoad.backgroundImage);
    backgroundRect = Rect.fromLTWH(
      0,
      game.screenSize.height - (game.tileSize * 23),
      game.tileSize * 9,
      game.tileSize * 23,
    );
  }

  void render(Canvas c) {
    backgroundSprite.renderRect(c, backgroundRect);
  }

  void update(double t) {}
}
