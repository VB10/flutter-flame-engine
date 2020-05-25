import 'package:flame/sprite.dart';
import 'package:flame1/core/image_load.dart';
import 'package:flame1/game/langw_game.dart';

import 'fly.dart';

class DroolerFly extends Fly {
  double get speed => game.tileSize * 1.5;

  DroolerFly(LangawGame game, double x, double y) : super(game, x, y) {
    flyingSprite = [];
    flyingSprite.add(Sprite(ImageLoad.droolerFly1));
    flyingSprite.add(Sprite(ImageLoad.droolerFly2));
    deadSprite = Sprite(ImageLoad.droolerFlyDead);
  }
}
