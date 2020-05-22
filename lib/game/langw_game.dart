import 'dart:math';
import 'dart:ui';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame1/components/fly.dart';
import 'package:flutter/gestures.dart';

class LangawGame extends Game {
  Size screenSize;
  double tileSize;

  List<Fly> files;
  Random random;

  LangawGame() {
    initialize();
  }
  Future<void> initialize() async {
    files = List<Fly>();
    resize(await Flame.util.initialDimensions());
    random = Random();
    spawnFly();
  }

  void render(Canvas canvas) {
    Rect bgRect = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    Paint bgPaint = Paint();
    bgPaint.color = Color(0xff576574);
    canvas.drawRect(bgRect, bgPaint);

    files.forEach((fly) => fly.render(canvas));
  }

  void spawnFly() {
    double x = random.nextDouble() * (screenSize.width - tileSize);
    double y = random.nextDouble() * (screenSize.height - tileSize);
    files.add(Fly(this, x, y));
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
