import 'package:flame/flame.dart';

class ImageLoad {
  static const String backgroundImage = 'bg/backyard.png';
  static const String houseFly1 = 'files/house-fly-1.png';
  static const String houseFly2 = 'files/house-fly-2.png';

  static const String droolerFly1 = 'files/drooler-fly-1.png';
  static const String droolerFly2 = 'files/drooler-fly-2.png';
  static const String droolerFlyDead = 'files/drooler-fly-dead.png';

  static const String agileFly1 = 'files/agile-fly-1.png';
  static const String agileFly2 = 'files/agile-fly-2.png';
  static const String agileFlyDead = 'files/agile-fly-dead.png';

  static void loadImageAll() {
    Flame.images.loadAll(<String>[
      backgroundImage,
      agileFly1,
      agileFly2,
      agileFlyDead,
      droolerFly1,
      droolerFly2,
      droolerFlyDead,
      houseFly1,
      houseFly2,
      'files/house-fly-2.png',
      'files/house-fly-dead.png',
      'files/hungry-fly-1.png',
      'files/hungry-fly-2.png',
      'files/hungry-fly-dead.png',
      'files/macho-fly-1.png',
      'files/macho-fly-2.png',
      'files/macho-fly-dead.png',
    ]);
  }
}
