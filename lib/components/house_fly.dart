import 'package:flame/sprite.dart';
import 'package:flame1/core/image_load.dart';
import 'package:flame1/game/langw_game.dart';

import 'fly.dart';

class HouseFly extends Fly {
  HouseFly(LangawGame game, double x, double y) : super(game, x, y) {
    flyingSprite = [];
    flyingSprite.add(Sprite(ImageLoad.houseFly1));
    flyingSprite.add(Sprite(ImageLoad.houseFly2));

    deadSprite = Sprite(ImageLoad.houseFly1);
  }
}
