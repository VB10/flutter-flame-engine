import 'dart:math';
import 'dart:ui';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame1/components/agile_fly.dart';
import 'package:flame1/components/backyard.dart';
import 'package:flame1/components/drooler_fly.dart';
import 'package:flame1/components/fly.dart';
import 'package:flame1/components/house_fly.dart';
import 'package:flutter/gestures.dart';

class LangawGame extends Game {
  Size screenSize;
  double tileSize;

  Backyard background;

  List<Fly> files;
  Random random;

  LangawGame() {
    initialize();
  }
  Future<void> initialize() async {
    files = List<Fly>();
    resize(await Flame.util.initialDimensions());
    random = Random();
    background = Backyard(this);

    spawnFly();
  }

  void render(Canvas canvas) {
    background.render(canvas);
    files.forEach((fly) => fly.render(canvas));
  }

  void spawnFly() {
    double x = random.nextDouble() * (screenSize.width - (tileSize));
    double y = random.nextDouble() * (screenSize.height - (tileSize));
    files.add(flyGenerate(x, y));
  }

  Fly flyGenerate(double x, double y) {
    switch (random.nextInt(3)) {
      case 0:
        return HouseFly(this, x, y);
      case 1:
        return AgileFly(this, x, y);
      case 2:
        return DroolerFly(this, x, y);
      default:
        return HouseFly(this, x, y);
    }
  }

  void onTapDown(TapDownDetails d) {
    files.forEach((fly) {
      if (fly.flyRect.contains(d.globalPosition)) {
        fly.onTapDown();
      }
    });
  }

  void update(double t) {
    files.forEach((fly) => fly.update(t));
    files.removeWhere((fly) => fly.isOffScreen);
  }

  void resize(Size size) {
    screenSize = size;
    tileSize = screenSize.width / 9;
  }
}
