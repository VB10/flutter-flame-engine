import 'package:flame/util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'game/langw_game.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Util flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);

  LangawGame game = LangawGame();
  runApp(game.widget);

  TapGestureRecognizer tapper = TapGestureRecognizer();
  tapper.onTapDown = game.onTapDown;
  flameUtil.addGestureRecognizer(tapper);
}
