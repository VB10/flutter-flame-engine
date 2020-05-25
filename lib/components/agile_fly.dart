import 'package:flame/sprite.dart';
import 'package:flame1/core/image_load.dart';
import 'package:flame1/game/langw_game.dart';

import 'fly.dart';

class AgileFly extends Fly {
  double get speed => game.tileSize * 5;

  AgileFly(LangawGame game, double x, double y) : super(game, x, y) {
    flyingSprite = [];
    flyingSprite.add(Sprite(ImageLoad.agileFly1));
    flyingSprite.add(Sprite(ImageLoad.agileFly2));
    deadSprite = Sprite(ImageLoad.agileFlyDead);
  }
}
